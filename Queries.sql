--1. player's performance(batting) :


WITH batted_players AS (
    SELECT DISTINCT on_strike AS player_id
    FROM per_ball_data
    WHERE of_match = 1 AND inning_no = 1

    UNION

    SELECT DISTINCT off_strike AS player_id
    FROM per_ball_data
    WHERE of_match = 1 AND inning_no = 1
),

-- names of players
player_list AS (
    SELECT p.player_id, name
    FROM players p
    JOIN batted_players bp ON p.player_id = bp.player_id
),

-- runs
runs_by_player AS (
    SELECT on_strike AS player_id, SUM(run_scored) AS runs
    FROM per_ball_data
    WHERE of_match = 1 AND inning_no = 1
    GROUP BY on_strike
),

-- balls
balls_by_player AS (
    SELECT on_strike AS player_id, COUNT(*) AS balls
    FROM per_ball_data
    WHERE (type_of_extra IS NULL OR type_of_extra NOT IN ('Wide', 'Byes'))
      AND of_match = 1 AND inning_no = 1
    GROUP BY on_strike
),

-- Fours
fours_by_player AS (
    SELECT on_strike AS player_id, COUNT(*) AS fours
    FROM per_ball_data
    WHERE boundary = 4 AND of_match = 1 AND inning_no = 1
    GROUP BY on_strike
),

-- Sixes
sixes_by_player AS (
    SELECT on_strike AS player_id, COUNT(*) AS sixes
    FROM per_ball_data
    WHERE boundary = 6 AND of_match = 1 AND inning_no = 1
    GROUP BY on_strike
),

-- Batting position
batting_positions AS (
    SELECT on_strike AS player_id, MIN(striker_batting_position) AS position
    FROM per_ball_data
    WHERE of_match = 1 AND inning_no = 1
    GROUP BY on_strike
),

-- Mode of dismissal
dismissals AS (
    SELECT 
        player_got_out AS player_id,
        CASE 
            WHEN caught_by IS NOT NULL THEN 'c ' || (SELECT name FROM players WHERE player_id = caught_by) || ' b ' || (SELECT name FROM players WHERE player_id = bowled_by)
            WHEN stumped_by IS NOT NULL THEN 'st ' || (SELECT name FROM players WHERE player_id = stumped_by) || ' b ' || (SELECT name FROM players WHERE player_id = bowled_by)
            WHEN run_out_by IS NOT NULL THEN 'run out (' || (SELECT name FROM players WHERE player_id = run_out_by) || ')'
            WHEN bowled_by IS NOT NULL THEN 'b ' || (SELECT name FROM players WHERE player_id = bowled_by)
            ELSE 'not out'
        END AS dismissal
    FROM wickets 
    JOIN per_ball_data ON ball_id = on_ball
    WHERE of_match = 1 AND inning_no = 1
)

-- Final SELECT
SELECT 
    pl.name AS player_name,
    COALESCE(d.dismissal, 'not out') AS dismissal_info,
    COALESCE(r.runs, 0) AS runs,
    COALESCE(b.balls, 0) AS balls,
    COALESCE(f.fours, 0) AS fours,
    COALESCE(s.sixes, 0) AS sixes,
    ROUND(CASE WHEN COALESCE(b.balls, 0) = 0 THEN 0 ELSE (COALESCE(r.runs, 0) * 100.0 / b.balls) END, 2) AS strike_rate,
    bp.position AS batting_position
FROM player_list pl
LEFT JOIN runs_by_player r ON r.player_id = pl.player_id
LEFT JOIN balls_by_player b ON b.player_id = pl.player_id
LEFT JOIN fours_by_player f ON f.player_id = pl.player_id
LEFT JOIN sixes_by_player s ON s.player_id = pl.player_id
LEFT JOIN dismissals d ON d.player_id = pl.player_id
LEFT JOIN batting_positions bp ON bp.player_id = pl.player_id
ORDER BY bp.position;

------------------------------------------------------------------------------------------------------------------------------------------------------------

-- 2. players that DNB:

SELECT name
FROM players AS p
NATURAL JOIN playing_11 AS PX
LEFT JOIN
(
SELECT DISTINCT on_strike
FROM per_ball_data
WHERE of_match = 1 AND inning_no = 1 -- remember to change inning no according to team id and vice versa

UNION 

SELECT DISTINCT on_strike
FROM per_ball_data
WHERE of_match = 1 AND inning_no = 1

) AS Players_that_batted
ON PX.player_id = Players_that_batted.on_strike
WHERE Players_that_batted.on_strike IS NULL AND match_id = 1 AND team_id = 9;
------------------------------------------------------------------------------------------------------------------------------------------------------------



-- 3. Score Summary match and inning wise

SELECT 
    last_ball.total_score || '/' || 
    COALESCE(wickets.wkt, 0) || ' (' || 
    FLOOR(balls.total_balls / 6) || '.' || 
    (balls.total_balls % 6) || ')' AS score_summary
FROM (
    SELECT total_score
    FROM per_ball_data
    WHERE of_match = 1 AND inning_no = 1
    ORDER BY ball_id DESC
    LIMIT 1
) last_ball,
(
    SELECT COUNT(wicket_no) AS wkt
    FROM per_ball_data
    WHERE of_match = 1 AND inning_no = 1 AND wicket_no IS NOT NULL
) wickets,
(
    SELECT COUNT(*) AS total_balls
    FROM (
        SELECT DISTINCT over_no, ball_no
        FROM per_ball_data
        WHERE of_match = 1 AND inning_no = 1 
        AND (type_of_extra IS NULL OR type_of_extra NOT IN ('Wide', 'No Ball'))
    ) AS legit_balls
) balls;
------------------------------------------------------------------------------------------------------------------------------------------------------------



-- 4. extras_summary: 

WITH extras_breakdown AS (
  SELECT 
    SUM(CASE WHEN type_of_extra = 'Byes' THEN extras ELSE 0 END) AS b,
    SUM(CASE WHEN type_of_extra = 'Leg Byes' THEN extras ELSE 0 END) AS lb,
    SUM(CASE WHEN type_of_extra = 'Wide' THEN extras ELSE 0 END) AS w,
    SUM(CASE WHEN type_of_extra = 'No Ball' THEN extras ELSE 0 END) AS nb,
    SUM(CASE WHEN type_of_extra = 'Penalty' THEN extras ELSE 0 END) AS p -- mostly for our data , there is no penalty but cricbuzz has this , so added
  FROM per_ball_data
  WHERE of_match = 1 AND inning_no = 1
)
SELECT 
  (b + lb + w + nb + p) || 
  ' (b ' || b || ', lb ' || lb || ', w ' || w || ', nb ' || nb || ', p ' || p || ')' AS extras_summary
FROM extras_breakdown;


------------------------------------------------------------------------------------------------------------------------------------------------------------

-- 5. Wicket Summary

SELECT 
  (pbd.over_no - 1) || '.' || pbd.ball_no AS ball,
  out_player.name AS player_out,
  bowler.name AS bowler_name,
  -- dismissal type based on fields present
  CASE 
    WHEN w.wicket_type = 'Caught' THEN 
      'c ' || catcher.name || ' b ' || bowler.name
    WHEN w.wicket_type = 'Stumped' THEN 
      'st ' || keeper.name || ' b ' || bowler.name
    WHEN w.wicket_type = 'Run Out' THEN 
      'run out (' || runner.name || ')'
    WHEN w.wicket_type = 'Bowled' THEN 
      'b ' || bowler.name
    ELSE 'not out'
  END AS dismissal_description
FROM wickets w
JOIN per_ball_data pbd ON w.on_ball = pbd.ball_id
JOIN players out_player ON w.player_got_out = out_player.player_id
JOIN players bowler ON pbd.bowled_by = bowler.player_id
LEFT JOIN players catcher ON w.caught_by = catcher.player_id
LEFT JOIN players keeper ON w.stumped_by = keeper.player_id
LEFT JOIN players runner ON w.run_out_by = runner.player_id
WHERE pbd.of_match = 1 AND pbd.inning_no = 1
ORDER BY pbd.over_no, pbd.ball_no;

------------------------------------------------------------------------------------------------------------------------------------------------------------


-- 6. Powerplay Score

WITH legal_balls AS (
    SELECT 
        total_score, 
        of_match, 
        inning_no,
        ROW_NUMBER() OVER (
            PARTITION BY of_match, inning_no 
            ORDER BY ball_id
        ) AS legal_ball_no
    FROM per_ball_data
    WHERE type_of_extra IS DISTINCT FROM 'Wide' 
      AND type_of_extra IS DISTINCT FROM 'No Ball'
),
powerplay_scores AS (
    SELECT 
        of_match, 
        inning_no, 
        total_score
    FROM legal_balls
    WHERE legal_ball_no = 36
)
SELECT total_score FROM powerplay_scores
WHERE of_match = 1 AND inning_no = 1;

------------------------------------------------------------------------------------------------------------------------------------------------------------


-- 7. Bowling simulation of an inning:

WITH bowlers AS (
  SELECT 
    pp.player_id,
    p.name,
    pp.balls_bowled,
    pp.runs_conceded,
    pp.wickets_taken,
    pp.sixes_conceded,
    pp.fours_conceded
  FROM player_performance_in_a_match pp
  JOIN players p ON pp.player_id = p.player_id
  WHERE pp.match_id = 1
    AND pp.balls_bowled > 0
    AND pp.player_id IN (
      SELECT DISTINCT bowled_by
      FROM per_ball_data
      WHERE of_match = 1 AND inning_no = 2
    )
)

SELECT 
  name AS bowler_name,
  (balls_bowled / 6) || '.' || (balls_bowled % 6) AS overs,
  runs_conceded AS runs,
  wickets_taken AS wickets,
  fours_conceded AS fours,
  sixes_conceded AS sixes,
  ROUND(CAST(runs_conceded AS NUMERIC) * 6 / balls_bowled, 2) AS economy
FROM bowlers
ORDER BY wickets_taken DESC, economy_rate ASC;

------------------------------------------------------------------------------------------------------------------------------------------------------------

-- 8. Whole squad of the team :

SELECT 
  name, 
  CASE 
    WHEN nationality = 'India' THEN '🏠' 
    ELSE '✈' 
  END AS status
FROM players
WHERE team_id = 9;

------------------------------------------------------------------------------------------------------------------------------------------------------------

-- 9. playing squad of a team in a match with impact player:

SELECT 
  p.name ||
  CASE 
    WHEN t.captain_id = p.player_id THEN ' (C)'
    ELSE ''
  END ||
  CASE 
    WHEN pl.is_substitute = TRUE THEN ' ⬅'
    ELSE ''
  END ||
  CASE 
    WHEN pl.substituted_out = TRUE THEN ' ➡'
    ELSE ''
  END AS playing_squad,

  CASE 
    WHEN p.nationality = 'India' THEN '🏠'
    ELSE '✈'
  END AS status

FROM players p
JOIN playing_11 pl ON p.player_id = pl.player_id
JOIN team t ON pl.team_id = t.team_id
WHERE pl.match_id = 1 AND pl.team_id = 2;

------------------------------------------------------------------------------------------------------------------------------------------------------------

-- 10. Benched Strength:

SELECT name AS bench_strength
FROM players 
WHERE team_id = 2
  AND player_id NOT IN (
    SELECT player_id 
    FROM playing_11 
    WHERE match_id = 1 AND team_id = 2
  );

------------------------------------------------------------------------------------------------------------------------------------------------------------


-- 11. top 3 performers for every innings(batting):

WITH
-- on strike players
all_players AS (
    SELECT DISTINCT on_strike AS player_id
    FROM per_ball_data 
    WHERE of_match = 1 AND inning_no = 1
),

runs_scored AS (
    SELECT on_strike AS player_id, SUM(run_scored) AS runs
    FROM per_ball_data
    WHERE of_match = 1 AND inning_no = 1
    GROUP BY on_strike
)

-- final select
SELECT 
    pl.name AS player_name,
    COALESCE(r.runs, 0) AS runs
FROM all_players p
LEFT JOIN runs_scored r ON p.player_id = r.player_id
JOIN players pl ON pl.player_id = p.player_id
ORDER BY r.runs DESC LIMIT 3;

------------------------------------------------------------------------------------------------------------------------------------------------------------


-- 12. Top 3 performances bowling wise

WITH bowlers AS (
  SELECT 
    pp.player_id,
    p.name,
    pp.balls_bowled,
    pp.runs_conceded,
    pp.wickets_taken,
    pp.sixes_conceded,
    pp.fours_conceded
  FROM player_performance_in_a_match pp
  JOIN players p ON pp.player_id = p.player_id
  WHERE pp.match_id = 1
    AND pp.balls_bowled > 0
    AND pp.player_id IN (
      SELECT DISTINCT bowled_by
      FROM per_ball_data
      WHERE of_match = 1 AND inning_no = 1
    )
)

SELECT 
  name AS bowler_name,
  wickets_taken || '/' || runs_conceded AS performance
FROM bowlers
ORDER BY wickets_taken DESC ,runs_conceded ASC
LIMIT 3;

------------------------------------------------------------------------------------------------------------------------------------------------------------


-- 13. Display toss winner:

SELECT 
'Match ' || match_id || ': ' || tname || ' won the toss and decided to ' || toss_decision AS toss_summary
FROM 
match_details 
JOIN 
team ON team_id = toss_winner;

------------------------------------------------------------------------------------------------------------------------------------------------------------

-- 14. Per ball description : 

SELECT 
    (over_no - 1) || '.' || ball_no AS ball,
    b.name || ' to ' || s.name || ' - ' ||
    CASE 
        WHEN type_of_extra = 'Wide' THEN 'Wide'
        WHEN type_of_extra = 'No Ball' THEN 'No Ball'
        WHEN type_of_extra = 'Byes' THEN run_scored || ' byes'
        WHEN type_of_extra = 'Leg Byes' THEN run_scored || ' leg byes'
        WHEN run_scored = 0 AND wicket_type IS NOT NULL THEN 'WICKET'
        WHEN run_scored = 0 THEN 'no run'
        ELSE run_scored || ' run' || CASE WHEN run_scored > 1 THEN 's' ELSE '' END
    END AS commentary
FROM per_ball_data p
JOIN players s ON p.on_strike = s.player_id
JOIN players b ON p.bowled_by = b.player_id
LEFT JOIN wickets w ON w.on_ball = p.ball_id
WHERE of_match = 1 AND inning_no = 1
ORDER BY over_no, ball_no;

------------------------------------------------------------------------------------------------------------------------------------------------------------



-- 15. Sixes in an inning of a match :

SELECT 
  (pbd.over_no - 1) || '.' || pbd.ball_no AS ball,
  player.name AS BATSMEN,
  bowler.name AS bowler_name
  
FROM per_ball_data pbd 
JOIN players player ON pbd.on_strike = player.player_id
JOIN players bowler ON pbd.bowled_by = bowler.player_id
WHERE pbd.of_match = 1 AND pbd.inning_no = 1 AND boundary = 6
ORDER BY pbd.over_no, pbd.ball_no;

------------------------------------------------------------------------------------------------------------------------------------------------------------

-- 16. Fours in an inning of a match :

SELECT 
  (pbd.over_no - 1) || '.' || pbd.ball_no AS ball,
  player.name AS BATSMEN,
  bowler.name AS bowler_name
  
FROM per_ball_data pbd 
JOIN players player ON pbd.on_strike = player.player_id
JOIN players bowler ON pbd.bowled_by = bowler.player_id
WHERE pbd.of_match = 1 AND pbd.inning_no = 1 AND boundary = 4 
ORDER BY pbd.over_no, pbd.ball_no;

fours for display purpose

------------------------------------------------------------------------------------------------------------------------------------------------------------

-- 17. Fixtures:

WITH match_info AS (
  SELECT 
    m.match_id,
    m.match_date AS date,
    CASE 
      WHEN m.match_time = 'Night' THEN '7:30 PM'
      ELSE '3:30 PM'
    END AS start_time,
    t1.tname AS team1,
    t2.tname AS team2
  FROM match_details m
  JOIN team t1 ON t1.team_id = m.team1
  JOIN team t2 ON t2.team_id = m.team2
)

SELECT 
  match_id,
  team1,
  team2,
  date,
  start_time
FROM match_info
ORDER BY match_id;

------------------------------------------------------------------------------------------------------------------------------------------------------------


-- 18. Orange cap:

SELECT 
  CASE 
    WHEN RANK() OVER (ORDER BY SUM(pp.runs) DESC) = 1 
    THEN CONCAT(p.name, ' (🟠🧢)') 
    ELSE p.name 
  END AS player_name,
  SUM(pp.runs) AS total_runs
FROM player_performance_in_a_match pp
JOIN players p ON pp.player_id = p.player_id
GROUP BY p.player_id, p.name
ORDER BY total_runs DESC
LIMIT 5;

------------------------------------------------------------------------------------------------------------------------------------------------------------

-- 19. Purple cap

SELECT 
  CASE 
    WHEN RANK() OVER (ORDER BY SUM(pp.wickets_taken) DESC) = 1 
    THEN CONCAT(p.name, ' (🟣🧢)') 
    ELSE p.name 
  END AS player_name,
  SUM(pp.wickets_taken) AS total_wickets
FROM player_performance_in_a_match pp
JOIN players p ON pp.player_id = p.player_id
GROUP BY p.player_id, p.name
ORDER BY total_wickets DESC
LIMIT 5;

------------------------------------------------------------------------------------------------------------------------------------------------------------

-- 20. Best batting average:

WITH
got_out AS (
SELECT player_got_out , COUNT(player_got_out) AS out_times
FROM wickets 
GROUP BY player_got_out
),

runs_scored AS (
SELECT player_id , SUM(runs) AS runs
FROM player_performance_in_a_match 
GROUP BY player_id
)

SELECT 
players.name,
ROUND(runs_scored.runs * 1.0 / got_out.out_times, 2) AS average,
runs_scored.runs
FROM
players JOIN
runs_scored ON players.player_id = runs_scored.player_id JOIN
got_out ON got_out.player_got_out = runs_scored.player_id
WHERE got_out.out_times <> 0
ORDER BY average DESC LIMIT 5;


------------------------------------------------------------------------------------------------------------------------------------------------------------

-- 21. Top strikers of the season minimum 10 balls played

SELECT 
  name,
  ROUND(SUM(runs) * 100.0 / SUM(balls_played), 2) AS strike_rate
FROM player_performance_in_a_match NATURAL JOIN players
GROUP BY player_id,name
HAVING SUM(balls_played) > 10
ORDER BY strike_rate DESC LIMIT 5;

------------------------------------------------------------------------------------------------------------------------------------------------------------

-- 22. Most 50s :

SELECT 
  name, 
  COUNT(CASE WHEN runs BETWEEN 50 AND 99 THEN 1 END) AS fifties
FROM player_performance_in_a_match
NATURAL JOIN players
GROUP BY name, player_id
ORDER BY fifties DESC
LIMIT 5;

------------------------------------------------------------------------------------------------------------------------------------------------------------

-- 23. Most 100s;

SELECT name , count(CASE WHEN runs > 99 THEN 1 END) AS hundreds
FROM player_performance_in_a_match
NATURAL JOIN players
GROUP BY name , player_id
ORDER BY hundreds DESC LIMIT 5;


------------------------------------------------------------------------------------------------------------------------------------------------------------

-- 24. Most 4s by players in the tournament:

SELECT name , sum(fours) AS fours
FROM player_performance_in_a_match
NATURAL JOIN players
GROUP BY name , player_id
ORDER BY fours DESC LIMIT 5;

------------------------------------------------------------------------------------------------------------------------------------------------------------

-- 25. Most 6s by players in the tournament:

SELECT name , sum(sixes) AS sixes
FROM player_performance_in_a_match
NATURAL JOIN players
GROUP BY name , player_id
ORDER BY sixes DESC LIMIT 5;

------------------------------------------------------------------------------------------------------------------------------------------------------------


-- 26. 4s of tournament:

SELECT COUNT(*) 
FROM
per_ball_data
WHERE (boundary = 4 OR extras = 4 OR extras = 5); -- not considering rare case of batter running 4 runs on bye

------------------------------------------------------------------------------------------------------------------------------------------------------------

-- 26. 6s of tournament:

SELECT COUNT(*) 
FROM
per_ball_data
WHERE (boundary = 6); -- not considering rare cases


------------------------------------------------------------------------------------------------------------------------------------------------------------

-- 25. SIXES BIFURCATION TEAM WISE:

SELECT tname , SUM(sixes) AS total_sixes
FROM
player_performance_in_a_match NATURAL JOIN players NATURAL JOIN team
GROUP BY team_id , tname
ORDER BY total_sixes DESC;

------------------------------------------------------------------------------------------------------------------------------------------------------------

-- 26. FOURS BIFURCATION TEAM WISE:

SELECT tname , SUM(fours) AS total_fours
FROM
player_performance_in_a_match NATURAL JOIN players NATURAL JOIN team
GROUP BY team_id , tname
ORDER BY total_fours DESC;

------------------------------------------------------------------------------------------------------------------------------------------------------------

-- 27. All player bowling stats :

SELECT
    p.name,
    COUNT(DISTINCT pp.match_id) AS matches_played,
    SUM(pp.balls_bowled) AS balls_bowled,
    FLOOR(SUM(pp.balls_bowled) / 6) || '.' || (SUM(pp.balls_bowled) % 6) AS overs_bowled,
    SUM(pp.runs_conceded) AS runs_conceded,
    SUM(pp.wickets_taken) AS wickets_taken,
    ROUND(SUM(pp.runs_conceded) * 6.0 / NULLIF(SUM(pp.balls_bowled), 0), 2) AS economy_rate
FROM
    Player_performance_in_a_match pp
JOIN
    Players p ON pp.player_id = p.player_id
WHERE
    pp.balls_bowled > 0  -- filters out non-bowlers
GROUP BY
    p.name
ORDER BY
    SUM(pp.wickets_taken) DESC;

------------------------------------------------------------------------------------------------------------------------------------------------------------

-- 28. Best bowling figures: 

SELECT 
    p.name,
    t.tname,
    pp.wickets_taken || '/' || pp.runs_conceded AS best_figures
FROM 
    player_performance_in_a_match pp
JOIN (
    SELECT 
        player_id, 
        MAX(wickets_taken) AS max_wickets
    FROM player_performance_in_a_match
	WHERE balls_bowled > 0
    GROUP BY player_id
) AS best_wick
ON pp.player_id = best_wick.player_id 
   AND pp.wickets_taken = best_wick.max_wickets
JOIN players p ON pp.player_id = p.player_id
JOIN team t ON p.team_id = t.team_id
WHERE pp.runs_conceded = (
    SELECT MIN(runs_conceded)
    FROM player_performance_in_a_match
    WHERE player_id = pp.player_id AND wickets_taken = pp.wickets_taken
)
ORDER BY pp.wickets_taken DESC , pp.runs_conceded ASC
LIMIT 5;

------------------------------------------------------------------------------------------------------------------------------------------------------------

-- 29. Fastest ball:

SELECT
    p.name,
    t.tname,
    m.match_id,
    m.match_date,
    pb.ball_speed
FROM
    Per_ball_data pb
JOIN Players p ON pb.bowled_by = p.player_id
JOIN Team t ON p.team_id = t.team_id
JOIN Match_details m ON pb.of_match = m.match_id
ORDER BY
    pb.ball_speed DESC
LIMIT 1;
fastest ball

------------------------------------------------------------------------------------------------------------------------------------------------------------

-- 30. Five wicket hauls:

SELECT 
    p.name,
    t.tname,
    pp.wickets_taken || '/' || pp.runs_conceded AS best_figures
FROM 
    player_performance_in_a_match pp
JOIN (
    SELECT 
        player_id, 
        MAX(wickets_taken) AS max_wickets
    FROM player_performance_in_a_match
	WHERE balls_bowled > 0 AND wickets_taken > 4
    GROUP BY player_id
) AS best_wick
ON pp.player_id = best_wick.player_id 
   AND pp.wickets_taken = best_wick.max_wickets
JOIN players p ON pp.player_id = p.player_id
JOIN team t ON p.team_id = t.team_id
WHERE pp.runs_conceded = (
    SELECT MIN(runs_conceded)
    FROM player_performance_in_a_match
    WHERE player_id = pp.player_id AND wickets_taken = pp.wickets_taken
)
ORDER BY pp.wickets_taken DESC , pp.runs_conceded ASC;

------------------------------------------------------------------------------------------------------------------------------------------------------------

-- 31. Top economical bowlers of the season :

SELECT
name,
ROUND((SUM(runs_conceded)* 1.0/ SUM(balls_bowled)*6 ), 2) AS economy
FROM
player_performance_in_a_match
NATURAL JOIN players
WHERE balls_bowled > 0
GROUP BY player_id , name
ORDER BY economy ASC LIMIT 5;

------------------------------------------------------------------------------------------------------------------------------------------------------------

-- 32. Bowling strike rate:

SELECT
name,
ROUND((SUM(balls_bowled)* 1.0/ SUM(wickets_taken) ), 2) AS bowling_strike_rate
FROM
player_performance_in_a_match
NATURAL JOIN players
WHERE balls_bowled > 0 AND wickets_taken > 0
GROUP BY player_id , name
ORDER BY bowling_strike_rate ASC LIMIT 5;

------------------------------------------------------------------------------------------------------------------------------------------------------------

-- 33. Bowling averages:

SELECT
name,
ROUND((SUM(runs_conceded)* 1.0/ SUM(wickets_taken) ), 2) AS bowling_strike_rate
FROM
player_performance_in_a_match
NATURAL JOIN players
WHERE balls_bowled > 0 AND wickets_taken > 0
GROUP BY player_id , name
ORDER BY bowling_strike_rate ASC LIMIT 5;

------------------------------------------------------------------------------------------------------------------------------------------------------------

-- 34.Most catches as a player


SELECT name , COUNT(caught_by) AS catches
FROM players JOIN wickets
ON player_id = caught_by
GROUP BY player_id
ORDER BY catches DESC LIMIT 5;

------------------------------------------------------------------------------------------------------------------------------------------------------------

-- 35. display points table:

SELECT 
    t.tname,
    pt.matches_played,
    pt.wins,
    pt.losses,
    pt.no_results,
    pt.points,
    pt.nrr
FROM points_table pt
JOIN team t ON pt.team_id = t.team_id
ORDER BY pt.points DESC, pt.nrr DESC;

------------------------------------------------------------------------------------------------------------------------------------------------------------


























