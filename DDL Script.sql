CREATE TABLE users (
    user_id INT PRIMARY KEY,
    password VARCHAR(255),
    last_access DATE,
    date_of_sign_in DATE
);

CREATE TABLE venue (
    venue_id INT PRIMARY KEY,
    city VARCHAR(100),
    state VARCHAR(100),
    grd_name VARCHAR(255) UNIQUE
);

CREATE TABLE team (
    team_id INT PRIMARY KEY,
    tname VARCHAR(255),
    captain_id INT,
    home_ground VARCHAR(255),
    FOREIGN KEY (home_ground) REFERENCES venue(grd_name)
    -- FOREIGN KEY (captain_id) REFERENCES players(player_id),
    -- this will be implemented using ALTER TABLE command after creation of the Players table 
);

CREATE TABLE players (
    player_id INT PRIMARY KEY,
    batting_style VARCHAR(50),
    bowling_style VARCHAR(50),
    name VARCHAR(255),
    nationality VARCHAR(50),
    team_id INT,
    FOREIGN KEY (team_id) REFERENCES Team(team_id)
);

ALTER TABLE team
ADD CONSTRAINT FK_Team_Captain
FOREIGN KEY (captain_id) REFERENCES Players(Player_ID);

CREATE TABLE match_details (
    match_id INT PRIMARY KEY,
    match_date DATE,
    toss_decision VARCHAR(50),
    status VARCHAR(50),
    team1 INT,
    team2 INT,
    toss_winner INT,
    venue VARCHAR(255),
    match_time VARCHAR(5)
    FOREIGN KEY (team1) REFERENCES Team(team_id),
    FOREIGN KEY (team2) REFERENCES Team(team_id),
    FOREIGN KEY (toss_winner) REFERENCES Team(team_id),
    FOREIGN KEY (venue) REFERENCES Venue(grd_name)
);

CREATE TABLE playing_11 (
    match_id INT,
    player_id INT,
    team_id INT,
    is_substitute BOOLEAN,
    substituted_out BOOLEAN,
    PRIMARY KEY (match_id, player_id),
    FOREIGN KEY (match_id) REFERENCES Match_details(match_id),
    FOREIGN KEY (player_id) REFERENCES Players(player_id),
    FOREIGN KEY (team_id) REFERENCES Team(team_id)
);

CREATE TABLE per_ball_data (
    ball_id INT PRIMARY KEY,
    over_no INT,
    ball_no INT,
    of_match INT,
    inning_no INT,
    extras INT,
    wicket_no INT,
    total_score INT,
    run_scored INT,
    on_strike INT,
    off_strike INT,
    bowled_by INT,
    type_of_extra varchar(20),
    stricker_batting_position INT,
    boundary INT,
    FOREIGN KEY (of_match) REFERENCES Match_details(match_id),
    FOREIGN KEY (on_strike) REFERENCES Players(player_id),
    FOREIGN KEY (off_strike) REFERENCES Players(player_id),
    FOREIGN KEY (bowled_by) REFERENCES Players(player_id)
);

CREATE TABLE wickets (
    wicket_id INT PRIMARY KEY,
    wicket_type VARCHAR(50),
    player_got_out INT,
    caught_by INT,
    run_out_by INT,
    on_ball INT,
    stumped_by INT,
    FOREIGN KEY (player_got_out) REFERENCES Players(player_id),
    FOREIGN KEY (caught_by) REFERENCES Players(player_id),
    FOREIGN KEY (run_out_by) REFERENCES Players(player_id),
    FOREIGN KEY (stumped_by) REFERENCES Players(player_id),
    FOREIGN KEY (on_ball) REFERENCES Per_ball_data(ball_id),
);

CREATE TABLE player_performance_in_a_match (
    match_id INT,
    player_id INT,
    runs INT,
    balls_played INT,
    wickets_taken INT,
    balls_bowled INT,
    runs_conceded INT,
    fours INT,
    sixes INT,
    fours_conceded INT,
    sixes_conceded INT,
    PRIMARY KEY (match_id, player_id),
    FOREIGN KEY (match_id) REFERENCES Match_details(match_id),
    FOREIGN KEY (player_id) REFERENCES Players(player_id)
);

CREATE TABLE final_result (
    match_id INT PRIMARY KEY,
    winner INT,
    loser INT,
    score_of_winner INT,
    score_of_loser INT,
    win_run_margin INT,
    win_wicket_margin INT,
    player_of_the_match INT,
    FOREIGN KEY (match_id) REFERENCES Match_details(match_id),
    FOREIGN KEY (winner) REFERENCES Team(team_id),
    FOREIGN KEY (loser) REFERENCES Team(team_id),
    FOREIGN KEY (player_of_the_match) REFERENCES Players(player_id)
);

CREATE TABLE match_officials (
    match_id INT PRIMARY KEY,
    on_field1 VARCHAR(255),
    on_field2 VARCHAR(255),
    third_ump VARCHAR(255),
    FOREIGN KEY (match_id) REFERENCES Match_details(match_id)
);

CREATE TABLE partnership (
    partnership_id INT PRIMARY KEY,
    player1 INT,
    player2 INT,
    match_id INT,
    runs INT,
    partnership_no INT,
    inning_no INT,
    FOREIGN KEY (player1) REFERENCES Players(player_id),
    FOREIGN KEY (player2) REFERENCES Players(player_id),
    FOREIGN KEY (match_id) REFERENCES Match_details(match_id)
);

CREATE TABLE points_table (
    team_id INT PRIMARY KEY,
    matches_played INT,
    wins INT,
    losses INT,
    no_results INT,
    points INT,
    nrr NUMERIC,
    FOREIGN KEY (team_id) REFERENCES Team(team_id)
);