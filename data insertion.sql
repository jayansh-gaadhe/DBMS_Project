------>  Team Table :

Insert into team(team_id,tname,home_ground)
values
(1,'Gujarat Titans','Narendra Modi Stadium'),
(2,'Royal Challengers Bangalore','Chinnaswamy Stadium'),
(3,'Mumbai Indians','Wankhede Stadium'),
(4,'Sunrisers Hyderabad','Rajiv Gandhi International Stadium'),
(5,'Lucknow Super Giants','Ekana Cricket Stadium'),
(6,'Delhi Capitals','Arun Jaietly Stadium'),
(7,'Chennai Super Kings','Chepauk'),
(8,'Punjab Kings','Maharaja Yadavindra Singh International Cricket Stadium'),
(9,'Kolkata Knight Riders','Eden Gardens'),
(10,'Rajasthan Royals','Sawai Mansingh Stadium');

------> Venue Table :

Insert into venue
values
(1,'Ahmedabad','Gujarat','Narendra Modi Stadium'),
(2,'Bangalore','Karnataka','Chinnaswamy Stadium'),
(3,'Mumbai','Maharashtra','Wankhede Stadium'),
(4,'Hyderabad','Telangana','Rajiv Gandhi International Stadium'),
(5,'Lucknow','Uttar Pradesh','Ekana Cricket Stadium'),
(6,'Delhi','Delhi','Arun Jaietly Stadium'),
(7,'Chennai','Tamil Nadu','Chepauk'),
(8,'Mohali','Punjab','Maharaja Yadavindra Singh International Cricket Stadium'),
(9,'Kolkata','West Bengal','Eden Gardens'),
(10,'Jaipur','Rajasthan','Sawai Mansingh Stadium');

------> Players Table :

-- Inserting Captains 

Insert into players
values
(1,'Right Hand Bat','Right Arm Offbreak','Shubman Gill','Batter',1),
(2,'Right Hand Bat','Right Arm Offbreak','Rajat Patidar','Batter',2),
(3,'Right Hand Bat','Right Arm Medium Fast','Hardik Pandya','All Rounder',3),
(4,'Right Hand Bat','Right Arm Fast','Pat Cummins','Bowler',4),
(5,'Left Hand Bat',NULL,'Rishabh Pant','Wicketkeeper Batter',5),
(6,'Left Hand Bat','Slow Left Arm Orthodox','Axar Patel','Bowler',6),
(7,'Right Hand Bat','Right Arm Offbreak','Ruturaj Gaikwad','Batter',7),
(8,'Right Hand Bat','Right Arm Offbreak','Shreyas Iyer','Batter',8),
(9,'Right Hand Bat','Right Arm Medium','Ajinkya Rahane','Batter',9),
(10,'Right Hand Bat',NULL,'Sanju Samson','Wicketkeeper Batter',10);

------> Inserting Captions in Team Table :

UPDATE team SET captain_id = 1 WHERE team_id = 1;
UPDATE team SET captain_id = 2 WHERE team_id = 2;
UPDATE team SET captain_id = 3 WHERE team_id = 3;
UPDATE team SET captain_id = 4 WHERE team_id = 4;
UPDATE team SET captain_id = 5 WHERE team_id = 5;
UPDATE team SET captain_id = 6 WHERE team_id = 6;
UPDATE team SET captain_id = 7 WHERE team_id = 7;
UPDATE team SET captain_id = 8 WHERE team_id = 8;
UPDATE team SET captain_id = 9 WHERE team_id = 9;
UPDATE team SET captain_id = 10 WHERE team_id = 10;

------> Inserting in players Table :

insert into players
values
(11,'Left Hand Bat','Legbreak Googly','Sai Sudharsan','All Rounder',1,'India'),
(12,'Right Hand Bat',NULL,'Jos Buttler','Wicketkeeper Batter',1,'England'),
(13,'Right Hand Bat',NULL,'Kumar Kushagra','Wicketkeeper Batter',1,'India'),
(14,'Left Hand Bat',NULL,'Anuj Rawat','Wicketkeeper Batter',1,'India'),
(15,'Left Hand Bat','Right Arm Fast medium','Sherfane Rutherford','Batter',1,'West Indies'),
(16,'Right Hand Bat','Right Arm Offbreak','Glenn Phillips','Batter',1,'New Zealand'),
(17,'Left Hand Bat','Slow Left Arm Orthodox','Nishant Sindhu','All Rounder',1,'India'),
(18,'Left Hand Bat','Slow Left Arm Orthodox','Mahipal Lomror','All Rounder',1,'India'),
(19,'Left Hand Bat','Right Arm Offbreak','Washington Sundar','All Rounder',1,'India'),
(20,'Left Hand Bat','Left Arm Medium Fast','Mohammed Arshad Khan','All Rounder',1,'India'),
(21,'Left Hand Bat','Slow Left Arm Orthodox','Sai Kishore','All Rounder',1,'India'),
(22,'Right Hand Bat','Right Arm Offbreak','Jayant Yadav','All Rounder',1,'India'),
(23,'Right Hand Bat','Right Arm Medium Fast','Karim Janat','All Rounder',1,'Afghanistan'),
(24,'Right Hand Bat','Right Arm Offbreak','Shahrukh Khan','All Rounder',1,'India'),
(25,'Left Hand Bat','Right Arm Fast','Kagiso Rabada','Bowler',1,'South Africa'),
(26,'Right Hand Bat','Right Arm Fast','Mohammed Siraj','Bowler',1,'India'),
(27,'Right Hand Bat','Right Arm Medium Fast','Prasidh Krishna','Bowler',1,'India'),
(28,'Left Hand Bat','Slow Left Arm Orthodox','Manav Suthar','Bowler',1,'India'),
(29,'Right Hand Bat','Right Arm Fast','Gerald Coetzee','Bowler',1,'South Africa'),
(30,'Left Hand Bat','Right Arm Fast','Gurnoor Singh Brar','Bowler',1,'India'),
(31,'Right Hand Bat','Right Arm Medium Fast','Ishant Sharma','Bowler',1,'India'),
(32,'Left Hand Bat','Left Arm Medium Fast','Kulwant Kejroliya','Bowler',1,'India'),
(33,'Left Hand Bat','Legbreak Googly','Rahul Tewatia','All Rounder',1,'India'),
(34,'Right Hand Bat','Legbreak Googly','Rashid Khan','Bowler',1,'Afghanistan');


-- Inserting players for Royal Challengers Bengaluru (team_id = 2)
INSERT INTO players VALUES
(36, 'Right Hand Bat', 'Right Arm Medium Fast', 'Virat Kohli', 'Batter', 2, 'India'),
(37, 'Right Hand Bat', NULL, 'Phil Salt', 'Wicketkeeper Batter', 2, 'England'),
(38, 'Right Hand Bat', NULL, 'Jitesh Sharma', 'Wicketkeeper Batter', 2, 'India'),
(39, 'Left Hand Bat', 'Right Arm Offbreak', 'Devdutt Padikkal', 'Batter', 2, 'India'),
(40, 'Right Hand Bat', 'Right Arm Offbreak', 'Swastik Chhikara', 'Batter', 2, 'India'),
(41, 'Right Hand Bat', 'Right Arm Offbreak', 'Liam Livingstone', 'All Rounder', 2, 'England'),
(42, 'Left Hand Bat', 'Slow Left Arm Orthodox', 'Krunal Pandya', 'All Rounder', 2, 'India'),
(43, 'Right Hand Bat', 'Slow Left Arm Orthodox', 'Swapnil Singh', 'All Rounder', 2, 'India'),
(44, 'Right Hand Bat', 'Right Arm Offbreak', 'Tim David', 'All Rounder', 2, 'Australia'),
(45, 'Right Hand Bat', 'Right Arm Medium Fast', 'Romario Shepherd', 'All Rounder', 2, 'West Indies'),
(46, 'Left Hand Bat', 'Right Arm Medium Fast', 'Manoj Bhandage', 'All Rounder', 2, 'India'),
(47, 'Left Hand Bat', 'Slow Left Arm Orthodox', 'Jacob Bethell', 'All Rounder', 2, 'England'),
(48, 'Left Hand Bat', 'Right Arm Medium Fast', 'Josh Hazlewood', 'Bowler', 2, 'Australia'),
(49, 'Right Hand Bat', 'Right Arm Medium Fast', 'Abhinandan Singh', 'Bowler', 2, 'India'),
(50, 'Right Hand Bat', 'Right Arm Legbreak', 'Suyash Sharma', 'Bowler', 2, 'India'),
(51, 'Right Hand Bat', 'Right Arm Medium Fast', 'Bhuvneshwar Kumar', 'Bowler', 2, 'India'),
(52, 'Right Hand Bat', 'Right Arm Medium Fast', 'Lungisani Ngidi', 'Bowler', 2, 'South Africa'),
(53, 'Right Hand Bat', 'Right Arm Medium Fast', 'Rasikh Dar', 'Bowler', 2, 'India'),
(54, 'Right Hand Bat', 'Legbreak', 'Mohit Rathee', 'Bowler', 2, 'India'),
(55, 'Left Hand Bat', 'Left Arm Medium Fast', 'Yash Dayal', 'Bowler', 2, 'India'),
(56, 'Right Hand Bat', 'Right Arm Medium Fast', 'Nuwan Thushara', 'Bowler', 2, 'Sri Lanka');


-- Inserting players for Mumbai Indians (team_id = 3)
INSERT INTO players VALUES
(57, 'Right Hand Bat', NULL, 'Rohit Sharma', 'Batter', 3, 'India'),
(58, 'Right Hand Bat', NULL, 'Surya Kumar Yadav', 'Batter', 3, 'India'),
(77, 'Left Hand Bat', NULL, 'Tilak Varma', 'All Rounder', 3, 'India'),
(59, 'Right Hand Bat', NULL, 'Bevon Jacobs', 'Middle order Batter', 3, 'India'),
(60, 'Left Hand Bat', 'Slow Left Arm Orthodox', 'Robin Minz', 'Wicketkeeper Batter', 3, 'India'),
(61, 'Left Hand Bat', NULL, 'Ryan Rickelton', 'Wicketkeeper Batter', 3, 'South Africa'),
(62, 'Right Hand Bat', NULL, 'Shrijith Krishnan', 'Wicketkeeper Batter', 3, 'India'),
(63, 'Right Hand Bat', 'Right Arm Offbreak', 'Naman Dhir', 'All Rounder', 3, 'India'),
(64, 'Right Hand Bat', 'Right Arm Offbreak', 'Will Jacks', 'All Rounder', 3, 'England'),
(65, 'Left Hand Bat', 'Slow Left Arm Orthodox', 'Mitchell Santner', 'All Rounder', 3, 'New Zealand'),
(66, 'Left Hand Bat', 'Right Arm Medium Fast', 'Raj Angad Bawa', 'All Rounder', 3, 'India'),
(67, 'Right Hand Bat', 'Right Arm Medium Fast', 'Corbin Bosch', 'All Rounder', 3, 'South Africa'),
(68, 'Right Hand Bat', 'Right Arm Medium Fast', 'Ashwani Kumar', 'Bowler', 3, 'India'),
(69, 'Right Hand Bat', 'Right Arm Legbreak', 'Karn Sharma', 'Bowler', 3, 'India'),
(70, 'Left Hand Bat', 'Left Arm Fast', 'Trent Boult', 'Bowler', 3, 'New Zealand'),
(71, 'Right Hand Bat', 'Right Arm Medium Fast', 'Deepak Chahar', 'Bowler', 3, 'India'),
(72, 'Left Hand Bat', 'Left Arm Medium Fast', 'Reece Topley', 'Bowler', 3, 'England'),
(73, 'Left Hand Bat', 'Left Arm Medium Fast', 'Arjun Tendulkar', 'Bowler', 3, 'India'),
(74, 'Right Hand Bat', 'Right Arm Fast', 'Jasprit Bumrah', 'Bowler', 3, 'India'),
(75, 'Right Hand Bat', 'Right Arm Offbreak', 'V. Satyanarayana Penmetsa', 'Bowler', 3, 'India'),
(76, 'Right Hand Bat', 'Right Arm Offbreak', 'Mujeeb-ur-Rahman', 'Bowler', 3, 'Afghanistan'),
(78, 'Right Hand Bat', 'Left Arm Wrist Spin', 'Vignesh Puthur', 'All Rounder', 3, 'India');


-- Inserting players for Sunrisers Hyderabad (team_id = 4)
INSERT INTO players  VALUES
(79, 'Left Hand Bat', NULL, 'Ishan Kishan', 'Wicketkeeper Batter', 4, 'India'),
(80, 'Left Hand Bat', NULL, 'Atharva Taide', 'Batter', 4, 'India'),
(81, 'Right Hand Bat', NULL, 'Abhinav Manohar', 'Batter', 4, 'India'),
(82, 'Right Hand Bat', NULL, 'Aniket Verma', 'Batter', 4, 'India'),
(83, 'Left Hand Bat', NULL, 'Sachin Baby', 'Batter', 4, 'India'),
(84, 'Right Hand Bat', NULL, 'Heinrich Klaasen', 'Wicketkeeper Batter', 4, 'South Africa'),
(85, 'Left Hand Bat', NULL, 'Travis Head', 'Batter', 4, 'Australia'),
(86, 'Right Hand Bat', 'Right Arm Medium Fast', 'Harshal Patel', 'All Rounder', 4, 'India'),
(87, 'Left Hand Bat', 'Right Arm Offbreak', 'Kamindu Mendis', 'All Rounder', 4, 'Sri Lanka'),
(88, 'Right Hand Bat', 'Right Arm Medium Fast', 'Wiaan Mulder', 'All Rounder', 4, 'South Africa'),
(89, 'Left Hand Bat', 'Slow Left Arm Orthodox', 'Abhishek Sharma', 'All Rounder', 4, 'India'),
(90, 'Right Hand Bat', 'Right Arm Medium Fast', 'Nitish Kumar Reddy', 'All Rounder', 4, 'India'),
(91, 'Right Hand Bat', 'Legbreak Googly', 'Rahul Chahar', 'Bowler', 4, 'India'),
(92, 'Right Hand Bat', 'Legbreak Googly', 'Adam Zampa', 'Bowler', 4, 'Australia'),
(93, 'Right Hand Bat', 'Right Arm Medium Fast', 'Simarjeet Singh', 'Bowler', 4, 'India'),
(94, 'Right Hand Bat', 'Legbreak Googly', 'Zeeshan Ansari', 'Bowler', 4, 'India'),
(95, 'Right Hand Bat', 'Left Arm Medium Fast', 'Jaydev Unadkat', 'Bowler', 4, 'India'),
(96, 'Right Hand Bat', 'Right Arm Fast', 'Eshan Malinga', 'Bowler', 4, 'Sri Lanka'),
(97, 'Right Hand Bat', 'Right Arm Fast', 'Mohammed Shami', 'Bowler', 4, 'India');


-- Inserting players for Lucknow Super Giants (team_id = 5)
INSERT INTO players  VALUES
(98, 'Left Hand Bat', NULL, 'David Miller', 'Batter', 5, 'South Africa'),
(99, 'Right Hand Bat', NULL, 'Aiden Markram', 'Batter', 5, 'South Africa'),
(100, 'Right Hand Bat', NULL, 'Aryan Juyal', 'Wicketkeeper Batter', 5, 'India'),
(101, 'Right Hand Bat', NULL, 'Himmat Singh', 'Batter', 5, 'India'),
(102, 'Right Hand Bat', NULL, 'Matthew Breetzke', 'Batter', 5, 'South Africa'),
(103, 'Left Hand Bat', NULL, 'Nicholas Pooran', 'Wicketkeeper Batter', 5, 'West Indies'),
(104, 'Right Hand Bat', 'Right Arm Medium Fast', 'Mitchell Marsh', 'All-Rounder', 5, 'Australia'),
(105, 'Right Hand Bat', 'Legbreak Googly', 'Abdul Samad', 'All-Rounder', 5, 'India'),
(106, 'Left Hand Bat', 'Slow Left Arm Orthodox', 'Shahbaz Ahmed', 'All-Rounder', 5, 'India'),
(107, 'Left Hand Bat', 'Slow Left Arm Orthodox', 'Yuvraj Chaudhary', 'All-Rounder', 5, 'India'),
(108, 'Right Hand Bat', 'Right Arm Medium Fast', 'Rajvardhan Hangargekar', 'All-Rounder', 5, 'India'),
(109, 'Right Hand Bat', 'Right Arm Medium Fast', 'Arshin Kulkarni', 'All-Rounder', 5, 'India'),
(110, 'Right Hand Bat', 'Right Arm Medium Fast', 'Avesh Khan', 'Bowler', 5, 'India'),
(111, 'Right Hand Bat', 'Right Arm Medium Fast', 'Akash Deep', 'Bowler', 5, 'India'),
(112, 'Right Hand Bat', 'Slow Left Arm Orthodox', 'M. Siddharth', 'Bowler', 5, 'India'),
(113, 'Right Hand Bat', 'Legbreak Googly', 'Digvesh Singh', 'Bowler', 5, 'India'),
(114, 'Right Hand Bat', 'Left Arm Medium Fast', 'Akash Singh', 'Bowler', 5, 'India'),
(115, 'Left Hand Bat', 'Right Arm Fast', 'Shamar Joseph', 'Bowler', 5, 'West Indies'),
(116, 'Right Hand Bat', 'Right Arm Fast', 'Prince Yadav', 'Bowler', 5, 'India'),
(117, 'Right Hand Bat', 'Right Arm Fast', 'Mayank Yadav', 'Bowler', 5, 'India'),
(118, 'Right Hand Bat', 'Legbreak Googly', 'Ravi Bishnoi', 'Bowler', 5, 'India'),
(119, 'Right Hand Bat', 'Right Arm Medium Fast', 'Shardul Thakur', 'All-Rounder', 5, 'India'),
(120, 'Right Hand Bat', 'Right Arm Offbreak', 'Ayush Badoni', 'All-Rounder', 5, 'India');


-- Inserting players for Delhi Capitals (team_id = 6)
INSERT INTO players  VALUES
(121, 'Right Hand Bat', NULL, 'KL Rahul', 'Wicketkeeper-Batter', 6, 'India'),
(122, 'Right Hand Bat', NULL, 'Jake Fraser-McGurk', 'Batter', 6, 'Australia'),
(123, 'Right Hand Bat', NULL, 'Karun Nair', 'Batter', 6, 'India'),
(124, 'Right Hand Bat', NULL, 'Faf du Plessis', 'Batter', 6, 'South Africa'),
(125, 'Right Hand Bat', NULL, 'Donovan Ferreira', 'Wicketkeeper-Batter', 6, 'South Africa'),
(126, 'Left Hand Bat', NULL, 'Abishek Porel', 'Wicketkeeper-Batter', 6, 'India'),
(127, 'Right Hand Bat', NULL, 'Tristan Stubbs', 'Wicketkeeper-Batter', 6, 'South Africa'),
(128, 'Right Hand Bat', 'Right Arm Medium Fast', 'Sameer Rizvi', 'All-Rounder', 6, 'India'),
(129, 'Right Hand Bat', 'Right Arm Medium Fast', 'Ashutosh Sharma', 'All-Rounder', 6, 'India'),
(130, 'Right Hand Bat', 'Right Arm Medium Fast', 'Darshan Nalkande', 'All-Rounder', 6, 'India'),
(131, 'Right Hand Bat', 'Right Arm Medium Fast', 'Vipraj Nigam', 'All-Rounder', 6, 'India'),
(132, 'Left Hand Bat', 'Slow Left Arm Orthodox', 'Ajay Mandal', 'All-Rounder', 6, 'India'),
(133, 'Right Hand Bat', 'Right Arm Medium Fast', 'Manvanth Kumar', 'All-Rounder', 6, 'India'),
(134, 'Right Hand Bat', 'Right Arm Medium Fast', 'Tripurana Vijay', 'All-Rounder', 6, 'India'),
(135, 'Right Hand Bat', 'Right Arm Medium Fast', 'Madhav Tiwari', 'All-Rounder', 6, 'India'),
(136, 'Left Hand Bat', 'Left Arm Fast', 'Mitchell Starc', 'Bowler', 6, 'Australia'),
(137, 'Left Hand Bat', 'Left Arm Medium Fast', 'T. Natarajan', 'Bowler', 6, 'India'),
(138, 'Right Hand Bat', 'Right Arm Medium Fast', 'Mohit Sharma', 'Bowler', 6, 'India'),
(139, 'Right Hand Bat', 'Right Arm Medium Fast', 'Mukesh Kumar', 'Bowler', 6, 'India'),
(140, 'Right Hand Bat', 'Right Arm Fast', 'Dushmantha Chameera', 'Bowler', 6, 'Sri Lanka'),
(141, 'Left Hand Bat', 'Left Arm Wrist spin', 'Kuldeep Yadav', 'Bowler', 6, 'India');


-- Inserting players for Chennai Super Kings (team_id = 7)
INSERT INTO players  VALUES
(142, 'Right Hand Bat', NULL, 'Mahendra Singh Dhoni', 'Wicketkeeper-Batter', 7, 'India'),
(143, 'Left Hand Bat', NULL, 'Devon Conway', 'Batter', 7, 'New Zealand'),
(144, 'Right Hand Bat', NULL, 'Rahul Tripathi', 'Batter', 7, 'India'),
(145, 'Right Hand Bat', NULL, 'Shaik Rasheed', 'Batter', 7, 'India'),
(146, 'Right Hand Bat', NULL, 'Vansh Bedi', 'Wicketkeeper-Batter', 7, 'India'),
(147, 'Right Hand Bat', NULL, 'Andre Siddarth', 'Batter', 7, 'India'),
(148, 'Left Hand Bat', 'Left Arm Spin', 'Rachin Ravindra', 'All-Rounder', 7, 'New Zealand'),
(149, 'Right Hand Bat', 'Right Arm Offbreak', 'Ravichandran Ashwin', 'All-Rounder', 7, 'India'),
(150, 'Right Hand Bat', 'Right Arm Medium Fast', 'Vijay Shankar', 'All-Rounder', 7, 'India'),
(151, 'Left Hand Bat', 'Left Arm Medium Fast', 'Sam Curran', 'All-Rounder', 7, 'England'),
(152, 'Right Hand Bat', 'Right Arm Medium Fast', 'Anshul Kamboj', 'All-Rounder', 7, 'India'),
(153, 'Right Hand Bat', 'Right Arm Offbreak', 'Deepak Hooda', 'All-Rounder', 7, 'India'),
(154, 'Right Hand Bat', 'Right Arm Medium Fast', 'Jamie Overton', 'All-Rounder', 7, 'England'),
(155, 'Right Hand Bat', 'Right Arm Fast', 'Kamlesh Nagarkoti', 'All-Rounder', 7, 'India'),
(156, 'Right Hand Bat', 'Right Arm Medium Fast', 'Ramakrishna Ghosh', 'All-Rounder', 7, 'India'),
(157, 'Left Hand Bat', 'Slow Left Arm Orthodox', 'Ravindra Jadeja', 'All-Rounder', 7, 'India'),
(158, 'Left Hand Bat', 'Right Arm Medium Fast', 'Shivam Dube', 'All-Rounder', 7, 'India'),
(159, 'Right Hand Bat', 'Left Arm Medium Fast', 'Khaleel Ahmed', 'Bowler', 7, 'India'),
(160, 'Right Hand Bat', 'Left Arm Wrist Spin', 'Noor Ahmad', 'Bowler', 7, 'Afghanistan'),
(161, 'Right Hand Bat', 'Left Arm Medium Fast', 'Mukesh Choudhary', 'Bowler', 7, 'India'),
(162, 'Right Hand Bat', 'Right Arm Medium Fast', 'Gurjapneet Singh', 'Bowler', 7, 'India'),
(163, 'Right Hand Bat', 'Right arm Medium Fast', 'Nathan Ellis', 'Bowler', 7, 'Australia'),
(164, 'Right Hand Bat', 'Legbreak Googly', 'Shreyas Gopal', 'Bowler', 7, 'India'),
(165, 'Right Hand Bat', 'Right arm Fast', 'Matheesha Pathirana', 'Bowler', 7, 'Sri Lanka');


-- Inserting players for Punjab Kings (team_id = 8)
INSERT INTO players  VALUES
(166, 'Right Hand Bat', NULL, 'Arshdeep Singh', 'Bowler', 8, 'India'),
(167, 'Right Hand Bat', NULL, 'Nehal Wadhera', 'Batter', 8, 'India'),
(168, 'Right Hand Bat', NULL, 'Vishnu Vinod', 'Wicketkeeper-Batter', 8, 'India'),
(169, 'Right Hand Bat', NULL, 'Josh Inglis', 'Wicketkeeper-Batter', 8, 'Australia'),
(170, 'Left Hand Bat', NULL, 'Harnoor Pannu', 'Batter', 8, 'India'),
(171, 'Right Hand Bat', NULL, 'Pyla Avinash', 'Batter', 8, 'India'),
(172, 'Right Hand Bat', NULL, 'Prabhsimran Singh', 'Wicketkeeper-Batter', 8, 'India'),
(173, 'Right Hand Bat', NULL, 'Shashank Singh', 'Batter', 8, 'India'),
(174, 'Right Hand Bat', 'Right Arm Legbreak', 'Yuzvendra Chahal', 'Bowler', 8, 'India'),
(175, 'Right Hand Bat', 'Right Arm Medium Fast', 'Marcus Stoinis', 'All-Rounder', 8, 'Australia'),
(176, 'Right Hand Bat', 'Right Arm Offbreak', 'Glenn Maxwell', 'All-Rounder', 8, 'Australia'),
(177, 'Left Hand Bat', 'Slow Left Arm Orthodox', 'Harpreet Brar', 'All-Rounder', 8, 'India'),
(178, 'Right Hand Bat', 'Right Arm Medium Fast', 'Vyshak Vijaykumar', 'Bowler', 8, 'India'),
(179, 'Right Hand Bat', 'Right Arm Medium Fast', 'Yash Thakur', 'Bowler', 8, 'India'),
(180, 'Right Hand Bat', 'Left Arm Medium Fast', 'Marco Jansen', 'All-Rounder', 8, 'South Africa'),
(181, 'Right Hand Bat', 'Right Arm Fast', 'Lockie Ferguson', 'Bowler', 8, 'New Zealand'),
(182, 'Right Hand Bat', 'Right Arm Medium Fast', 'Azmatullah Omarzai', 'All-Rounder', 8, 'Afghanistan'),
(183, 'Right Hand Bat', 'Right Arm Medium Fast', 'Kuldeep Sen', 'Bowler', 8, 'India'),
(184, 'Right Hand Bat', 'Right Arm Medium Fast', 'Priyansh Arya', 'All-Rounder', 8, 'India'),
(185, 'Right Hand Bat', 'Right Arm Medium Fast', 'Aaron Hardie', 'All-Rounder', 8, 'Australia'),
(186, 'Right Hand Bat', 'Right Arm Medium Fast', 'Xavier Bartlett', 'Bowler', 8, 'Australia'),
(187, 'Right Hand Bat', 'Right Arm Offbreak', 'Praveen Dubey', 'Bowler', 8, 'India'),
(188, 'Right Hand Bat', 'Right Arm Medium Fast', 'Suryansh Shedge', 'All-Rounder', 8, 'India'),
(189, 'Right Hand Bat', 'Right Arm Medium Fast', 'Musheer Khan', 'All-Rounder', 8, 'India');


-- Inserting players for Kolkata Knight Riders (team_id = 9)
INSERT INTO players VALUES
(190, 'Left Hand Bat', NULL, 'Rinku Singh', 'Batter', 9, 'India'),
(191, 'Left Hand Bat', NULL, 'Quinton de Kock', 'Wicketkeeper-Batter', 9, 'South Africa'),
(192, 'Right Hand Bat', NULL, 'Rahmanullah Gurbaz', 'Wicketkeeper-Batter', 9, 'Afghanistan'),
(193, 'Right Hand Bat', NULL, 'Angkrish Raghuvanshi', 'Batter', 9, 'India'),
(194, 'Right Hand Bat', NULL, 'Rovman Powell', 'Batter', 9, 'West Indies'),
(195, 'Right Hand Bat', NULL, 'Manish Pandey', 'Batter', 9, 'India'),
(196, 'Left Hand Bat', NULL, 'Luvnith Sisodia', 'Wicketkeeper-Batter', 9, 'India'),
(197, 'Left Hand Bat', 'Right Arm Medium Fast', 'Venkatesh Iyer', 'All-Rounder', 9, 'India'),
(198, 'Left Hand Bat', 'Slow Left Arm Orthodox', 'Anukul Roy', 'All-Rounder', 9, 'India'),
(199, 'Left Hand Bat', 'Right Arm Offbreak', 'Moeen Ali', 'All-Rounder', 9, 'England'),
(200, 'Right Hand Bat', 'Right Arm Medium Fast', 'Ramandeep Singh', 'All-Rounder', 9, 'India'),
(201, 'Right Hand Bat', 'Right Arm Fast', 'Andre Russell', 'All-Rounder', 9, 'West Indies'),
(202, 'Right Hand Bat', 'Right Arm Fast', 'Anrich Nortje', 'Bowler', 9, 'South Africa'),
(203, 'Right Hand Bat', 'Right Arm Medium Fast', 'Vaibhav Arora', 'Bowler', 9, 'India'),
(204, 'Right Hand Bat', 'Legbreak Googly', 'Mayank Markande', 'Bowler', 9, 'India'),
(205, 'Left Hand Bat', 'Left Arm Fast', 'Spencer Johnson', 'Bowler', 9, 'Australia'),
(206, 'Right Hand Bat', 'Right Arm Fast', 'Harshit Rana', 'Bowler', 9, 'India'),
(207, 'Left Hand Bat', 'Right Arm Offbreak', 'Sunil Narine', 'Bowling Allrounder', 9, 'West Indies'),
(208, 'Right Hand Bat', 'Legbreak Googly', 'Varun Chakravarthy', 'Bowler', 9, 'India'),
(209, 'Left Hand Bat', 'Left Arm Medium Fast', 'Chetan Sakariya', 'Bowler', 9, 'India');


-- Rajasthan Royals (team_id = 10), excluding captain Sanju Samson
INSERT INTO players  VALUES
(210, 'Left Hand Bat', NULL, 'Shubham Dubey', 'Batter', 10, 'India'),
(211, 'Right Hand Bat', NULL, 'Vaibhav Suryavanshi', 'Batter', 10, 'India'),
(212, 'Left Hand Bat', NULL, 'Kunal Rathore', 'Wicketkeeper-Batter', 10, 'India'),
(213, 'Left Hand Bat', NULL, 'Shimron Hetmyer', 'Batter', 10, 'West Indies'),
(214, 'Left Hand Bat', NULL, 'Yashasvi Jaiswal', 'Batter', 10, 'India'),
(215, 'Right Hand Bat', NULL, 'Dhruv Jurel', 'Wicketkeeper-Batter', 10, 'India'),
(216, 'Right Hand Bat', NULL, 'Riyan Parag', 'Batter', 10, 'India'),
(217, 'Left Hand Bat', 'Right Arm Offbreak', 'Nitish Rana', 'All-Rounder', 10, 'India'),
(218, 'Right Hand Bat', 'Right Arm Medium Fast', 'Yudhvir Charak', 'All-Rounder', 10, 'India'),
(219, 'Right Hand Bat', 'Right Arm Fast', 'Jofra Archer', 'Bowler', 10, 'England'),
(220, 'Right Hand Bat', 'Right Arm Offbreak', 'Maheesh Theekshana', 'Bowler', 10, 'Sri Lanka'),
(221, 'Right Hand Bat', 'Legbreak Googly', 'Wanindu Hasaranga', 'Bowler', 10, 'Sri Lanka'),
(222, 'Right Hand Bat', 'Right Arm Medium Fast', 'Akash Madhwal', 'Bowler', 10, 'India'),
(223, 'Right Hand Bat', 'Slow Left Arm Orthodox', 'Kumar Kartikeya Singh', 'Bowler', 10, 'India'),
(224, 'Right Hand Bat', 'Right Arm Medium Fast', 'Tushar Deshpande', 'Bowler', 10, 'India'),
(225, 'Right Hand Bat', 'Left Arm Medium Fast', 'Fazalhaq Farooqi', 'Bowler', 10, 'Afghanistan'),
(226, 'Right Hand Bat', 'Left Arm Fast', 'Kwena Maphaka', 'Bowler', 10, 'South Africa'),
(227, 'Right Hand Bat', 'Right Arm Medium Fast', 'Ashok Sharma', 'Bowler', 10, 'India'),
(228, 'Right Hand Bat', 'Right Arm Medium Fast', 'Sandeep Sharma', 'Bowler', 10, 'India');



------> Insertion in Match_details table:

INSERT INTO match_details VALUES
(1,'2025-03-22','to_bowl,'completed,2,9,2,'Eden Gardens','Night'),
(2, '2025-03-23', 'to_bowl', 'completed', 4, 10,10, 'Rajiv Gandhi International Stadium', 'Day'),
(3, '2025-03-23', 'to_bowl', 'completed', 7, 3,7, 'Chepauk', 'Night'),
(5, '2025-03-25', 'to_bowl', 'completed', 1, 8,1, 'Narendra Modi Stadium', 'Night');





------> Insering in playing_11 Table:

insert into playing_11 values
(1,37,2,FALSE,FALSE),
(1,36,2,FALSE,FALSE),
(1,39,2,TRUE,FALSE),
(1,2,2,FALSE,FALSE),
(1,41,2,FALSE,FALSE),
(1,38,2,FALSE,FALSE),
(1,44,2,FALSE,FALSE),
(1,42,2,FALSE,FALSE),
(1,53,2,FALSE,FALSE),
(1,48,2,FALSE,FALSE),
(1,55,2,FALSE,FALSE),
(1,50,2,FALSE,TRUE),
(1,191,9,FALSE,FALSE),
(1,207,9,FALSE,FALSE),
(1,9,9,FALSE,FALSE),
(1,197,9,FALSE,FALSE),
(1,193,9,FALSE,TRUE),
(1,190,9,FALSE,FALSE),
(1,201,9,FALSE,FALSE),
(1,200,9,FALSE,FALSE),
(1,206,9,FALSE,FALSE),
(1,205,9,FALSE,FALSE),
(1,208,9,FALSE,FALSE),
(1,203,9,TRUE,FALSE);



INSERT INTO playing_11 
VALUES
-- SRH (team_id = 4)
(2, 79, 4, FALSE, FALSE),
(2, 89, 4, FALSE, FALSE),
(2, 84, 4, FALSE, FALSE),
(2, 88, 4, FALSE, FALSE),
(2, 86, 4, FALSE, FALSE),
(2, 91, 4, FALSE, FALSE),
(2, 95, 4, FALSE, FALSE),
(2, 97, 4, FALSE, FALSE),
(2, 90, 4, FALSE, FALSE),
(2, 87, 4, FALSE, FALSE),
(2, 85, 4, FALSE, TRUE),      -- Travis Head out
(2, 92, 4, TRUE, FALSE),      -- Adam Zampa in
-- RR (team_id = 10)
(2, 214, 10, FALSE, FALSE),
(2, 215, 10, FALSE, FALSE),
(2, 213, 10, FALSE, FALSE),
(2, 216, 10, FALSE, FALSE),
(2, 217, 10, FALSE, FALSE),
(2, 219, 10, FALSE, FALSE),
(2, 221, 10, FALSE, FALSE),
(2, 224, 10, FALSE, FALSE),
(2, 227, 10, FALSE, FALSE),
(2, 228, 10, FALSE, FALSE),
(2, 225, 10, FALSE, TRUE),    -- Farooqi out
(2, 2, 10, TRUE, FALSE); -- Sanju Samson in 


INSERT into playing_11
values
(3,57,3,false,true),
(3,61,3,false,false),
(3,64,3,false,false),
(3,58,3,false,false),
(3,77,3,false,false),
(3,60,3,false,false),
(3,3,3,false,false),
(3,65,3,false,false),
(3,71,3,false,false),
(3,70,3,false,false),
(3,75,3,false,false),
(3,78,3,true,false),
(3,148,7,false,false),
(3,144,7,true,false),
(3,7,7,false,false),
(3,158,7,false,false),
(3,153,7,false,false),
(3,151,7,false,false),
(3,157,7,false,false),
(3,142,7,false,false),
(3,149,7,false,false),
(3,160,7,false,false),
(3,163,7,false,false),
(3,159,7,false,true);


INSERT into playing_11
values
(5,1,1,false,false),
(5,11,1,false,false),
(5,12,1,false,false),
(5,15,1,true,false),
(5,33,1,false,false),
(5,24,1,false,false),
(5,20,1,false,false),
(5,21,1,false,false),
(5,34,1,false,false),
(5,25,1,false,false),
(5,26,1,false,false),
(5,27,1,false,true),
(5,8,8,false,false),
(5,184,8,false,true),
(5,172,8,false,false),
(5,182,8,false,false),
(5,176,8,false,false),
(5,175,8,false,false),
(5,173,8,false,false),
(5,188,8,false,false),
(5,180,8,false,false),
(5,166,8,false,false),
(5,174,8,false,false),
(5,178,8,true,false);



-------> Insertion in Per_ball_data Table:

INSERT into per_ball_data
values
(1,1,1,1,1,NULL,NULL,0,0,191,207,48,138.92,NULL,1),
(2,1,2,1,1,NULL,NULL,4,4,191,207,48,139.20,NUll,1),
(3,1,3,1,1,NULL,NULL,4,0,191,207,48,138.58,NULL,1),
(4,1,4,1,1,NULL,NULL,4,0,191,207,48,133.25,NULL,1),
(5,1,5,1,1,NULL,1,4,0,191,207,48,144.40,NULL,1),
(6,1,6,1,1,NULL,NULL,4,0,9,207,48,140.50,NULL,3),
(7,2,1,1,1,NULL,NULL,4,0,207,9,55,125.60,NULL,2),
(8,2,2,1,1,NULL,NULL,4,0,207,9,55,128.60,NULL,2),
(9,2,3,1,1,NULL,NULL,4,0,207,9,55,129.00,NULL,2),
(10,2,4,1,1,NULL,NULL,4,0,207,9,55,135.20,NULL,2),
(11,2,5,1,1,NULL,NULL,5,1,207,9,55,136.60,NULL,2),
(12,2,6,1,1,NULL,NULL,5,0,9,207,55,136.50,NULL,3),
(13,3,1,1,1,NULL,NULL,5,0,207,9,48,135.90,NULL,2),
(14,3,2,1,1,NULL,NULL,5,0,207,9,48,140.80,NULL,2),
(15,3,3,1,1,NULL,NULL,5,0,207,9,48,125.60,NULL,2),
(16,3,4,1,1,NULL,NULL,9,4,207,9,48,139.55,NULL,2),
(17,3,5,1,1,NULL,NULL,9,0,207,9,48,136.89,NULL,2),
(18,3,6,1,1,NULL,NULL,9,0,207,9,48,133.33,NULL,2),
(19,4,1,1,1,NULL,NULL,9,0,9,207,53,130.52,NULL,3),
(20,4,2,1,1,NULL,NULL,13,4,9,207,53,135.85,NULL,3),
(21,4,3,1,1,NULL,NULL,19,6,9,207,53,137.45,NULL,3),
(22,4,4,1,1,NULL,NULL,19,0,9,207,53,138.52,NULL,3),
(23,4,5,1,1,NULL,NULL,25,6,9,207,53,140.85,NULL,3),
(24,4,6,1,1,NULL,NULL,25,0,9,207,53,139.20,NULL,3),
(25,5,1,1,1,NULL,NULL,31,6,207,9,42,89.95,NULL,2),
(26,5,2,1,1,NULL,NULL,32,1,207,9,42,92.50,NULL,2),
(27,5,3,1,1,NULL,NULL,32,0,9,207,42,85.25,NULL,3),
(28,5,4,1,1,NULL,NULL,32,0,9,207,42,79.80,NULL,3),
(29,5,5,1,1,NULL,NULL,36,4,9,207,42,97.58,NULL,3),
(30,5,6,1,1,NULL,NULL,40,4,9,207,42,89.80,NULL,3),
(31,6,1,1,1,NULL,NULL,44,4,207,9,55,129.00,NULL,2),
(32,6,2,1,1,NULL,NULL,45,1,207,9,55,135.60,NULL,2),
(33,6,3,1,1,NULL,NULL,49,4,9,207,55,135.70,NULL,3),
(34,6,4,1,1,NULL,NULL,55,6,9,207,55,138.50,NULL,3),
(35,6,5,1,1,NULL,NULL,59,4,9,207,55,138.10,NULL,3),
(36,6,6,1,1,NULL,NULL,60,1,9,207,55,132.70,NULL,3),
(37,7,1,1,1,NULL,NULL,60,0,9,207,50,89.90,NULL,3),
(38,7,2,1,1,NULL,NULL,64,4,9,207,50,87.77,NULL,3),
(39,7,3,1,1,NULL,NULL,64,0,9,207,50,92.20,NULL,3),
(40,7,4,1,1,NULL,NULL,64,0,9,207,50,89.50,NULL,3),
(41,7,5,1,1,NULL,NULL,64,0,9,207,50,91.10,NULL,3),
(42,7,6,1,1,NULL,NULL,65,1,9,207,50,88.00,NULL,3),
(43,8,1,1,1,1,NULL,66,0,9,207,53,136.50,'Leg Byes',3),
(44,8,2,1,1,1,NULL,67,0,207,9,53,138.90,'Wide',2),
(45,8,2,1,1,NULL,NULL,68,1,207,9,53,140.00,NULL,2),
(46,8,3,1,1,NULL,NULL,69,1,9,207,53,141.50,NULL,3),
(47,8,4,1,1,1,NULL,70,0,207,9,53,145.50,'Wide',2),
(48,8,4,1,1,NULL,NULL,70,0,207,9,53,142.20,NULL,2),
(49,8,5,1,1,NULL,NULL,74,4,207,9,53,140.00,NULL,2),
(50,8,6,1,1,NULL,NULL,74,0,207,9,53,135.60,NULL,2),
(51,9,1,1,1,1,NULL,75,0,9,207,50,85.60,'Wide',3),
(52,9,1,1,1,NULL,NULL,81,6,9,207,50,88.88,NULL,3),
(53,9,2,1,1,NULL,NULL,83,2,9,207,50,89.00,NULL,3),
(54,9,3,1,1,NULL,NULL,84,1,9,207,50,90.90,NULL,3),
(55,9,4,1,1,NULL,NULL,86,2,207,9,50,85.50,NULL,2),
(56,9,5,1,1,NULL,NULL,92,6,207,9,50,92.00,NULL,2),
(57,9,6,1,1,NULL,NULL,96,4,207,9,50,85.00,NULL,2),
(58,10,1,1,1,NULL,NULL,96,0,9,207,53,145.00,NULL,3),
(59,10,2,1,1,NULL,NULL,97,1,9,207,53,143.50,NULL,3),
(60,10,3,1,1,NULL,NULL,101,4,207,9,53,137.50,NULL,2),
(61,10,4,1,1,NULL,NULL,101,0,207,9,53,138.70,NULL,2),
(62,10,5,1,1,NULL,NULL,107,6,207,9,53,141.66,NULL,2),
(63,10,6,1,1,NULL,2,107,0,207,9,53,144.44,NULL,2),
(64,11,1,1,1,NULL,NULL,108,1,9,197,42,89.90,NULL,3),
(65,11,2,1,1,NULL,NULL,109,1,197,9,42,92.00,NULL,4),
(66,11,3,1,1,NULL,3,109,0,9,197,42,86.30,NULL,3),
(67,11,4,1,1,NULL,NULL,110,1,193,197,42,82.30,NULL,5),
(68,11,5,1,1,NULL,NULL,110,0,197,193,42,89.00,NULL,4),
(69,11,6,1,1,NULL,NULL,110,0,197,193,42,89.50,NULL,4),
(70,12,1,1,1,NULL,NULL,111,1,193,197,50,90.25,NULL,5),
(71,12,2,1,1,NULL,NULL,111,0,197,193,50,83.00,NULL,4),
(72,12,3,1,1,NULL,NULL,115,4,197,193,50,89.00,NULL,4),
(73,12,4,1,1,NULL,NULL,116,1,197,193,50,91.00,NULL,4),
(74,12,5,1,1,NULL,NULL,120,4,193,197,50,89.90,NULL,5),
(75,12,6,1,1,NULL,NULL,124,4,193,197,50,88.00,NULL,5),
(76,13,1,1,1,1,NULL,125,0,197,193,42,89.80,'Wide',4),
(77,13,1,1,1,NULL,4,125,0,197,193,42,93.00,NULL,4),
(78,13,2,1,1,NULL,NULL,126,1,190,193,42,90.00,NULL,6),
(79,13,3,1,1,NULL,NULL,127,1,193,190,42,89.90,NULL,5),
(80,13,4,1,1,NULL,NULL,128,1,190,193,42,90.00,NULL,6),
(81,13,5,1,1,NULL,NULL,130,2,193,190,42,89.00,NULL,5),
(82,13,6,1,1,NULL,NULL,131,1,193,190,42,83.50,NULL,5),
(83,14,1,1,1,NULL,NULL,132,1,193,190,41,83.00,NULL,5),
(84,14,2,1,1,NULL,NULL,133,1,190,193,41,85.60,NULL,6),
(85,14,3,1,1,NULL,NULL,134,1,193,190,41,86.50,NULL,5),
(86,14,4,1,1,NULL,NULL,138,1,190,193,41,89.90,NULL,6),
(87,14,5,1,1,NULL,NULL,140,2,190,193,41,90.00,NULL,6),
(88,14,6,1,1,NULL,NULL,141,1,190,193,41,91.20,NULL,6),
(89,15,1,1,1,NULL,NULL,142,1,190,193,42,90.00,NULL,6),
(90,15,2,1,1,NULL,NULL,143,1,193,190,42,92.20,NULL,5),
(91,15,3,1,1,NULL,NULL,143,0,190,193,42,89.90,NULL,6),
(92,15,4,1,1,NULL,NULL,144,1,190,193,42,88.00,NULL,6),
(93,15,5,1,1,NULL,NULL,145,1,193,190,42,89.80,NULL,5),
(94,15,6,1,1,NULL,5,145,0,190,193,42,90.90,NULL,6),
(95,16,1,1,1,NULL,NULL,146,1,193,201,50,95.00,NULL,5),
(96,16,2,1,1,NULL,NULL,146,0,201,193,50,94.00,NULL,7),
(97,16,3,1,1,NULL,NULL,150,4,201,193,50,87.00,NULL,7),
(98,16,4,1,1,NULL,6,150,0,201,193,50,95.00,NULL,7),
(99,16,5,1,1,NULL,NULL,150,0,200,193,50,89.80,NULL,8),
(100,16,6,1,1,NULL,NULL,151,1,200,193,50,88.80,NULL,8),
(101,17,1,1,1,NULL,NULL,152,1,200,193,41,89.80,NULL,8),
(102,17,2,1,1,NULL,NULL,153,1,193,200,41,90.50,NULL,5),
(103,17,3,1,1,NULL,NULL,154,1,200,193,41,85.60,NULL,8),
(104,17,4,1,1,NULL,NULL,154,0,193,200,41,86.90,NULL,5),
(105,17,5,1,1,NULL,NULL,155,1,193,200,41,89.80,NULL,5),
(106,17,6,1,1,NULL,NULL,155,0,200,193,41,90.80,NULL,8),
(107,18,1,1,1,NULL,NULL,155,0,193,200,48,140.80,NULL,5),
(108,18,2,1,1,NULL,NULL,156,1,193,200,48,141.80,NULL,5),
(109,18,3,1,1,1,NULL,157,0,200,193,48,142.90,'Leg Byes',8),
(110,18,4,1,1,NULL,NULL,163,6,193,200,48,144.70,NULL,5),
(111,18,5,1,1,NULL,NULL,164,1,193,200,48,140.60,NULL,5),
(112,18,6,1,1,NULL,NULL,165,1,200,193,48,139.50,NULL,8),
(113,19,1,1,1,NULL,NULL,166,1,200,193,55,135.50,NULL,8),
(114,19,2,1,1,NULL,NULL,167,1,193,200,55,134.60,NULL,5),
(115,19,3,1,1,NULL,NULL,168,1,200,193,55,138.00,NULL,8),
(116,19,4,1,1,NULL,NULL,168,0,193,200,55,135.00,NULL,5),
(117,19,5,1,1,NULL,7,168,0,193,200,55,141.80,NULL,5),
(118,19,6,1,1,NULL,NULL,169,1,206,200,55,133.50,NULL,9),
(119,20,1,1,1,NULL,NULL,169,0,206,200,48,139.80,NULL,9),
(120,20,2,1,1,NULL,NULL,169,0,206,200,48,145.80,NULL,9),
(121,20,3,1,1,NULL,NULL,169,0,206,200,48,144.00,NULL,9),
(122,20,4,1,1,NULL,NULL,173,4,206,200,48,138.90,NULL,9),
(123,20,5,1,1,NULL,8,173,0,206,200,48,135.60,NULL,9),
(124,20,6,1,1,NULL,NULL,174,1,205,200,48,141.00,NULL,10);


INSERT INTO per_ball_data
VALUES
(125,1,1,1,2,NULL,NULL,4,4,37,36,203,135.63,NULL,1,4),
(126,1,2,1,2,1,NULL,5,0,37,36,203,135.00,'Wide',1,NULL),
(127,1,2,1,2,NULL,NULL,5,0,37,36,203,134.30,NULL,1,NULL),
(128,1,3,1,2,NULL,NULL,5,0,37,36,203,140.20,NULL,1,NULL),
(129,1,4,1,2,NULL,NULL,6,1,37,36,203,126.50,NULL,1,NULL),
(130,1,5,1,2,NULL,NULL,10,4,36,37,203,139.90,NULL,2,4),
(131,1,6,1,2,NULL,NULL,12,2,36,37,203,132.50,NULL,2,NULL),
(132,2,1,1,2,NULL,NULL,12,0,37,36,205,136.90,NULL,1,NULL),
(133,2,2,1,2,NULL,NULL,12,0,37,36,205,135.80,NULL,1,NULL),
(134,2,3,1,2,NULL,NULL,16,4,37,36,205,140.00,NULL,1,4),
(135,2,4,1,2,NULL,NULL,16,0,37,36,205,139.60,NULL,1,NULL),
(136,2,5,1,2,NULL,NULL,16,0,37,36,205,126.00,NULL,1,NULL),
(137,2,6,1,2,1,NULL,17,0,37,36,205,140.50,'Leg Byes',1,NULL),
(138,3,1,1,2,NULL,NULL,21,4,37,36,203,136.90,NULL,1,4),
(139,3,2,1,2,NULL,NULL,27,6,37,36,203,135.60,NULL,1,6),
(140,3,3,1,2,NULL,NULL,28,1,37,36,203,138.00,NULL,1,NULL),
(141,3,4,1,2,NULL,NULL,32,4,36,37,203,132.80,NULL,1,4),
(142,3,5,1,2,NULL,NULL,33,1,36,37,203,135.00,NULL,1,NULL),
(143,3,6,1,2,NULL,NULL,37,4,37,36,203,135.90,NULL,1,4),
(144,4,1,1,2,NULL,NULL,38,1,36,37,208,89.90,NULL,2,NULL),
(145,4,2,1,2,NULL,NULL,40,2,37,36,208,88.80,NULL,1,NULL),
(146,4,3,1,2,NULL,NULL,44,4,37,36,208,89.50,NULL,1,4),
(147,4,4,1,2,NULL,NULL,50,6,37,36,208,88.60,NULL,1,6),
(148,4,5,1,2,NULL,NULL,54,4,37,36,208,85.80,NULL,1,4),
(149,4,6,1,2,NULL,NULL,58,4,37,36,208,85.00,NULL,1,4),
(150,5,1,1,2,NULL,NULL,64,6,36,37,205,142.30,NULL,2,6),
(151,5,2,1,2,NULL,NULL,70,6,36,37,205,144.60,NULL,2,6),
(152,5,3,1,2,NULL,NULL,70,0,36,37,205,135.60,NULL,2,NULL),
(153,5,4,1,2,NULL,NULL,71,1,36,37,205,140.00,NULL,2,NULL),
(154,5,5,1,2,NULL,NULL,71,0,37,36,205,139.50,NULL,1,NULL),
(155,5,6,1,2,NULL,NULL,75,4,37,36,205,145.00,NULL,1,4),
(156,6,1,1,2,NULL,NULL,75,0,36,37,206,150.00,NULL,2,NULL),
(157,6,2,1,2,NULL,NULL,76,1,36,37,206,145.00,NULL,2,NULL),
(158,6,3,1,2,NULL,NULL,76,0,37,36,206,140.50,NULL,1,NULL),
(159,6,4,1,2,NULL,NULL,77,1,37,36,206,141.00,NULL,1,NULL),
(160,6,5,1,2,NULL,NULL,79,2,36,37,206,136.80,NULL,2,NULL),
(161,6,6,1,2,NULL,NULL,80,1,36,37,206,132.50,NULL,2,NULL),
(162,7,1,1,2,NULL,NULL,80,0,36,37,208,88.60,NULL,2,NULL),
(163,7,2,1,2,NULL,NULL,84,4,36,37,208,88.00,NULL,2,4),
(164,7,3,1,2,NULL,NULL,85,1,36,37,208,92.00,NULL,2,NULL),
(165,7,4,1,2,NULL,NULL,85,0,37,36,208,85.90,NULL,1,NULL),
(166,7,5,1,2,NULL,NULL,86,1,37,36,208,90.00,NULL,1,NULL),
(167,7,6,1,2,NULL,NULL,86,0,36,37,208,88.60,NULL,2,NULL),
(168,8,1,1,2,1,NULL,87,0,37,36,207,95.50,NULL,1,NULL),
(169,8,2,1,2,NULL,NULL,87,0,36,37,207,90.00,NULL,2,NULL),
(170,8,3,1,2,NULL,NULL,88,1,36,37,207,85.00,NULL,2,NULL),
(171,8,4,1,2,NULL,NULL,89,1,37,38,207,90.00,NULL,1,NULL),
(172,8,5,1,2,NULL,NULL,90,1,36,37,207,88.00,NULL,2,NULL),
(173,8,6,1,2,NULL,NULL,91,1,37,36,207,82.50,NULL,1,NULL),
(174,9,1,1,2,NULL,NULL,95,4,37,36,208,90.00,NULL,1,4),
(175,9,2,1,2,NULL,NULL,95,0,37,36,208,90.00,NULL,1,NULL),
(176,9,3,1,2,NULL,1,95,0,37,36,208,95.00,NULL,1,NULL),
(177,9,4,1,2,NULL,NULL,95,0,39,36,208,91.00,NULL,3,NULL),
(178,9,5,1,2,NULL,NULL,95,0,39,36,208,95.00,NULL,3,NULL),
(179,9,6,1,2,NULL,NULL,96,1,39,36,208,101.25,NULL,3,NULL),
(180,10,1,1,2,NULL,NULL,97,1,39,36,207,90.60,NULL,3,NULL),
(181,10,2,1,2,NULL,NULL,97,0,36,39,207,90.50,NULL,2,NULL),
(182,10,3,1,2,NULL,NULL,98,1,36,39,207,90.00,NULL,2,NULL),
(183,10,4,1,2,NULL,NULL,99,1,39,36,207,85.00,NULL,3,NULL),
(184,10,5,1,2,NULL,NULL,100,1,36,39,207,89.00,NULL,2,NULL),
(185,10,6,1,2,NULL,NULL,104,4,39,36,207,87.50,NULL,3,4),
(186,11,1,1,2,NULL,NULL,105,1,36,39,208,143.20,NULL,2,NULL),
(187,11,2,1,2,NULL,NULL,106,1,39,36,208,140.00,NULL,3,NULL),
(188,11,3,1,2,NULL,NULL,112,6,36,39,208,141.30,NULL,2,6),
(189,11,4,1,2,NULL,NULL,113,1,36,39,208,140.90,NULL,2,NULL),
(190,11,5,1,2,NULL,NULL,114,1,39,36,208,139.20,NULL,3,NULL),
(191,11,6,1,2,NULL,NULL,115,1,36,39,208,138.00,NULL,2,NULL),
(192, 12, 1, 1, 2, NULL,NULL,116,1,36, 39, 207, 87.50, NULL, 2, NULL),
(193, 12, 2, 1, 2, NULL,NULL,117, 1, 39, 36, 207, 88.10, NULL, 3, NULL),
(194, 12, 3, 1, 2, NULL,NULL,118, 1, 36, 39, 207, 87.90, NULL, 2, NULL),
(195, 12, 4, 1, 2, NULL,2,118,0, 39, 36, 207, 89.00, NULL, 3, NULL),  -- WICKET ball
(196, 12, 5, 1, 2, NULL,NULL,118, 0, 2, 36, 207, 88.40, NULL, 4, NULL),
(197, 12, 6, 1, 2, NULL,NULL,119, 1, 2, 36, 207, 88.20, NULL, 4, NULL),
(198,13,1,1,2,NULL,NULL,119,0,2,36,206,141.50,NULL,4,NULL),
(199,13,2,1,2,NULL,NULL,119,0,2,36,206,140.30,NULL,4,NULL),
(200,13,3,1,2,NULL,NULL,121,2,2,36,206,145.80,NULL,4,NULL),
(201,13,4,1,2,NULL,NULL,122,1,2,36,206,149.00,NULL,4,NULL),
(202,13,5,1,2,NULL,NULL,126,4,36,2,206,150.00,NULL,2,4),
(203,13,6,1,2,NULL,NULL,127,1,36,2,206,138.50,NULL,2,NULL),
(204,14,1,1,2,NULL,NULL,128,1,36,2,207,87.50,NULL,2,NULL),
(205,14,2,1,2,NULL,NULL,134,6,2,36,207,88.00,NULL,4,6),
(206,14,3,1,2,NULL,NULL,135,1,2,36,207,87.00,NULL,4,NULL),
(207,14,4,1,2,NULL,NULL,136,1,36,2,207,90.50,NULL,2,NULL),
(208,14,5,1,2,NULL,NULL,137,1,2,36,207,97.50,NULL,4,NULL),
(209,14,6,1,2,NULL,NULL,138,1,36,2,207,85.00,NULL,2,NULL),
(210,15,1,1,2,NULL,NULL,139,1,36,2,206,137.50,NULL,2,NULL),
(211,15,2,1,2,NULL,NULL,143,4,2,36,206,140.00,NULL,2,4),
(212,15,3,1,2,NULL,NULL,147,4,2,36,206,137.00,NULL,4,4),
(213,15,4,1,2,NULL,NULL,149,2,2,36,206,130.50,NULL,4,NULL),
(214,15,5,1,2,NULL,NULL,153,4,2,36,206,147.50,NULL,4,4),
(215,15,6,1,2,NULL,NULL,157,4,2,36,206,143.00,NULL,4,4),
(216,16,1,1,2,NULL,NULL,158,1,36,2,203,127.50,NULL,2,NULL),
(217,16,2,1,2,NULL,NULL,162,4,2,36,203,128.00,NULL,4,4),
(218,16,3,1,2,NULL,3,162,0,2,36,203,127.00,NULL,4,NULL),
(219,16,4,1,2,NULL,NULL,166,4,41,36,203,130.50,NULL,5,4),
(220,16,5,1,2,NULL,NULL,166,0,41,36,203,137.50,NULL,5,NULL),
(221,16,6,1,2,NULL,NULL,167,1,41,36,203,131.00,NULL,5,NULL),
(222,17,1,1,2,NULL,NULL,173,6,41,36,205,140.25,NULL,5,6),
(223,17,2,1,2,NULL,NULL,177,4,41,36,205,140.00,NULL,5,4);


INSERT INTO per_ball_data VALUES
(224, 1, 1, 2, 1, NULL, NULL, 0, 0, 89, 85, 225, 132.7, NULL, 1, NULL),
(225, 1, 2, 2, 1, NULL, NULL, 0, 0, 89, 85, 225, 135, NULL, 1, NULL),
(226, 1, 3, 2, 1, NULL, NULL, 4, 4, 89, 85, 225, 134.6, NULL, 1, 4),
(227, 1, 4, 2, 1, NULL, NULL, 8, 4, 89, 85, 225, 132, NULL, 1, 4),
(228, 1, 5, 2, 1, NULL, NULL, 9, 1, 89, 85, 225, 127, NULL, 1, NULL),
(229, 1, 6, 2, 1, NULL, NULL, 10, 1, 85, 89, 225, 130, NULL, 2, NULL),
(230, 2, 1, 2, 1, 1, NULL, 11, 0, 85, 89, 220, 97.5, 'No Ball', 2, NULL),
(231, 2, 1, 2, 1, 1, NULL, 12, 0, 85, 89, 220, 95, 'Wide', 2, NULL),
(232, 2, 1, 2, 1, NULL, NULL, 14, 2, 85, 89, 220, 89.6, NULL, 2, NULL),
(233, 2, 2, 2, 1, NULL, NULL, 14, 0, 85, 89, 220, 96.5, NULL, 2, NULL),
(234, 2, 3, 2, 1, NULL, NULL, 14, 0, 85, 89, 220, 93, NULL, 2, NULL),
(235, 2, 4, 2, 1, NULL, NULL, 18, 4, 85, 89, 220, 101.7, NULL, 2, 4),
(236, 2, 5, 2, 1, NULL, NULL, 24, 6, 85, 89, 220, 95.9, NULL, 2, 6),
(237, 2, 6, 2, 1, NULL, NULL, 24, 0, 85, 89, 220, 92.4, NULL, 2, NULL),
(238, 3, 1, 2, 1, NULL, NULL, 28, 4, 89, 85, 225, 127.8, NULL, 1, 4),
(239, 3, 2, 2, 1, NULL, NULL, 32, 6, 89, 85, 225, 130, NULL, 1, 4),
(240, 3, 3, 2, 1, NULL, NULL, 36, 4, 89, 85, 225, 132, NULL, 1, 4),
(241, 3, 4, 2, 1, NULL, NULL, 38, 2, 89, 85, 225, 129, NULL, 1, NULL),
(242, 3, 5, 2, 1, NULL, NULL, 39, 1, 89, 85, 225, 134, NULL, 1, NULL),
(243, 3, 6, 2, 1, NULL, NULL, 45, 6, 85, 89, 225, 128, NULL, 2, 6),
(244, 4, 1, 2, 1, NULL, 1, 45, 0, 89, 85, 220, 94, NULL, 1, NULL),
(245, 4, 2, 2, 1, NULL, NULL, 45, 0, 79, 85, 220, 89, NULL, 3, NULL),
(246, 4, 3, 2, 1, NULL, NULL, 49, 4, 79, 85, 220, 96, NULL, 3, 4),
(247, 4, 4, 2, 1, NULL, NULL, 53, 4, 79, 85, 220, 104, NULL, 3, 4),
(248, 4, 5, 2, 1, NULL, NULL, 55, 2, 79, 85, 220, 88, NULL, 3, NULL),
(249, 4, 6, 2, 1, NULL, NULL, 55, 0, 79, 85, 220, 96, NULL, 3, NULL),
(250, 5, 1, 2, 1, NULL, NULL, 59, 4, 85, 79, 219, 140, NULL, 2, 4),
(251, 5, 2, 2, 1, NULL, NULL, 65, 6, 85, 79, 219, 142, NULL, 2, 6),
(252, 5, 3, 2, 1, NULL, NULL, 65, 0, 85, 79, 219, 144, NULL, 2, NULL),
(253, 5, 4, 2, 1, NULL, NULL, 69, 4, 85, 79, 219, 138, NULL, 2, 4),
(254, 5, 5, 2, 1, 1, NULL, 70, 0, 85, 79, 219, 139, 'Wide', 2, NULL),
(255, 5, 5, 2, 1, NULL, NULL, 74, 4, 85, 79, 219, 142, NULL, 2, 4),
(256, 5, 6, 2, 1, NULL, NULL, 78, 4, 85, 79, 219, 144, NULL, 2, 4),
(257, 6,1, 2, 1, NULL, NULL, 82, 4, 79, 85, 220, 92, NULL, 3, 4),
(258, 6, 2, 2,1, NULL, NULL, 86, 4, 79, 85, 220, 99, NULL, 3, 4),
(259, 6, 3, 2, 1, NULL, NULL, 87, 1, 79,85, 220, 87, NULL, 3, NULL),
(260, 6, 4, 2, 1, NULL, NULL, 88, 1, 85, 79, 220, 90, NULL, 2, NULL),
(261, 6, 5, 2, 1, NULL, NULL, 89, 1, 79, 85, 220, 95, NULL, 3, NULL),
(262, 6, 6, 2, 1, 1, NULL, 90, 0, 85, 79, 220, 93, 'No Ball', 2, NULL),
(263, 6, 6, 2, 1, NULL, NULL, 94, 4, 85, 79, 220, 99, NULL, 2, 4),
(264, 7, 1, 2, 1, NULL, NULL, 98, 4, 79, 85, 228, 127, NULL, 3, 4),
(265, 7, 2, 2, 1, NULL, NULL, 98, 0, 79, 85, 228, 133, NULL, 3, NULL),
(266, 7, 3, 2, 1, NULL, NULL, 99, 1, 79, 85, 228, 130, NULL, 3, NULL),
(267, 7, 4, 2, 1, NULL, NULL, 101, 2, 85, 79, 228, 132.6, NULL, 2, NULL),
(268, 7, 5, 2, 1, NULL, NULL, 102, 1, 85, 79, 228, 129.7, NULL, 2, NULL),
(269, 7, 6, 2, 1, NULL, NULL, 106, 4, 79, 85, 228, 135.2, NULL, 3, 4),
(270, 8, 1, 2, 1, NULL, NULL, 107, 1, 85, 79, 217, 99.7, NULL, 2, NULL),
(271, 8, 2, 2, 1, NULL, NULL, 108, 1, 79, 85, 217, 95.9, NULL, 3, NULL),
(272, 8, 3, 2, 1, NULL, NULL, 112, 4, 85, 79, 217, 96.7, NULL, 2, 4),
(273, 8, 4, 2, 1, NULL, NULL, 113, 1, 85, 79, 217, 95, NULL, 2, NULL),
(274, 8, 5, 2, 1, NULL, NULL, 114, 1, 79, 85, 217, 92.5, NULL, 3, NULL),
(275, 8, 6, 2, 1, NULL, NULL, 115, 1, 85, 79, 217, 102.3, NULL, 2, NULL),
(276, 9, 1, 2, 1, NULL, NULL, 115, 0, 85, 79, 228, 128.9, NULL, 2, NULL),
(277, 9, 2, 2, 1, NULL, NULL, 117, 2, 85, 79, 228, 120.2, NULL, 2, NULL),
(278, 9,3, 2, 1, NULL, NULL, 118, 1, 85, 79, 228, 127.5, NULL, 2, NULL),
(279, 9, 4, 2, 1, NULL, NULL, 119, 1, 79, 85, 228, 127, NULL, 3, NULL),
(280, 9, 5, 2, 1, NULL, NULL, 123, 4, 85, 79, 228, 130, NULL, 2, 4),
(281, 9, 6, 2, 1, NULL, NULL, 123, 0, 85, 79, 228, 133, NULL, 2, NULL),
(282, 10, 1, 2, 1, 1, NULL, 124, 0, 79, 85, 224, 122, 'Wide', 3, NULL),
(283,10,1,2,1,NULL,NULL,125,1,79,85,224,130,NULL,3,NULL),
(284,10,2,2,1,1,NULL,126,0,85,79,224,133,'Wide',2,NULL),
(285,10,2,2,1,NULL,NULL,130,4,85,79,224,135,NULL,2,4),
(286,10,3,2,1,NULL,2,130,0,85,79,224,136,NULL,2,NULL),
(287,10,4,2,1,NULL,NULL,130,0,90,79,224,135,NULL,4,NULL),
(288,10,5,2,1,NULL,NULL,134,4,90,79,224,139,NULL,4,4),
(289,10,6,2,1,NULL,NULL,135,1,90,79,224,126,NULL,4,NULL),
(290,11,1,2,1,NULL,NULL,136,1,90,79,219,153,NULL,4,NULL),
(291,11,2,2,1,NULL,NULL,137,1,79,90,219,149,NULL,3,NULL),
(292,11,3,2,1,NULL,NULL,141,4,90,79,219,147,NULL,4,4),
(293,11,4,2,1,NULL,NULL,142,1,90,79,219,148,NULL,4,NULL),
(294,11,5,2,1,NULL,NULL,143,1,79,90,219,144,NULL,3,NULL),
(295,11,6,2,1,NULL,NULL,147,4,90,79,219,145,NULL,4,4),
(296,12,1,2,1,NULL,NULL,148,1,79,90,224,130,NULL,3,NULL),
(297,12,2,2,1,NULL,NULL,150,2,90,79,224,133,NULL,4,NULL),
(298,12,3,2,1,NULL,NULL,151,1,90,79,224,134,NULL,4,NULL),
(299,12,4,2,1,NULL,NULL,153,2,79,90,224,133,NULL,3,NULL),
(300,12,5,2,1,1,NULL,154,0,79,90,224,135,'Wide',3,NULL),
(301,12,5,2,1,1,NULL,155,0,79,90,224,134,'Wide',3,NULL),
(302,12,5,2,1,NULL,NULL,155,0,79,90,224,127,NULL,3,NULL),
(303,12,6,2,1,NULL,NULL,156,1,79,90,224,129,NULL,3,NULL),
(304,13,1,2,1,NULL,NULL,162,6,79,90,219,140,NULL,3,6),
(305,13,2,2,1,NULL,NULL,168,6,79,90,219,141,NULL,3,6),
(306,13,3,2,1,NULL,NULL,169,1,79,90,219,141,NULL,3,NULL),
(307,13,4,2,1,NULL,NULL,170,1,90,79,219,145,NULL,4,NULL),
(308,13,5,2,1,1,NULL,171,0,79,90,219,146,'Wide',3,NULL),
(309,13,5,2,1,NULL,NULL,177,6,79,90,219,145,NULL,3,6),
(310,13,6,2,1,NULL,NULL,178,1,79,90,219,149,NULL,3,NULL),
(311,14,1,2,1,NULL,NULL,184,6,79,90,225,135,NULL,3,6),
(312,14,2,2,1,NULL,NULL,185,1,79,90,225,135,NULL,3,NULL),
(313,14,3,2,1,NULL,NULL,185,0,90,79,225,134,NULL,4,NULL),
(314,14,4,2,1,NULL,NULL,191,6,90,79,225,133,NULL,4,6),
(315,14,5,2,1,NULL,NULL,192,1,90,79,225,132,NULL,4,NULL),
(316,14,6,2,1,NULL,NULL,196,4,79,90,225,135,NULL,3,4),
(317,15,1,2,1,1,NULL,197,0,90,79,220,89,'Wide',4,NULL),
(318,15,1,2,1,NULL,NULL,201,4,90,79,220,90,NULL,4,4),
(319,15,2,2,1,1,NULL,202,0,90,79,220,91,'Wide',4,NULL),
(320,15,2,2,1,NULL,3,202,0,90,79,220,91,NULL,4,NULL),
(321,15,3,2,1,NULL,NULL,203,1,84,79,220,89,NULL,5,NULL),
(322,15,4,2,1,NULL,NULL,203,0,79,84,220,89,NULL,3,NULL),
(323,15,5,2,1,NULL,NULL,207,4,79,84,220,90,NULL,3,4),
(324,15,6,2,1,NULL,NULL,208,1,79,84,220,87,NULL,3,NULL),
(325,16,1,2,1,NULL,NULL,212,4,79,84,224,135,NULL,3,4),
(326,16,2,2,1,1,NULL,213,0,79,84,224,130,'Wide',3,NULL),
(327,16,2,2,1,NULL,NULL,213,0,79,84,224,133,NULL,3,NULL),
(328,16,3,2,1,NULL,NULL,214,1,79,84,224,133,NULL,3,NULL),
(329,16,4,2,1,NULL,NULL,218,4,84,79,224,135,NULL,5,4),
(330,16,5,2,1,NULL,NULL,219,1,84,79,224,136,NULL,5,NULL),
(331,16,6,2,1,NULL,NULL,219,0,79,84,224,134,NULL,3,NULL),
(332,17,1,2,1,NULL,NULL,220,1,84,79,228,135,NULL,5,NULL),
(333,17,2,2,1,NULL,NULL,221,1,79,84,228,127,NULL,3,NULL),
(334,17,3,2,1,NULL,NULL,223,2,84,79,228,129,NULL,5,NULL),
(335,17,4,2,1,NULL,NULL,223,0,84,79,228,130,NULL,5,NULL),
(336,17,5,2,1,NULL,NULL,229,6,84,79,228,133,NULL,5,6),
(337,17,6,2,1,NULL,NULL,233,4,84,79,228,134,NULL,5,4),
(338,18,1,2,1,5,NULL,238,0,79,84,219,140,'No Ball',3,NULL),
(339,18,1,2,1,NULL,NULL,239,1,79,84,219,140,NULL,3,NULL),
(340,18,2,2,1,NULL,NULL,243,4,84,79,219,145,NULL,5,4),
(341,18,3,2,1,NULL,NULL,247,4,84,79,219,145,NULL,5,4),
(342,18,4,2,1,NULL,NULL,251,4,84,79,219,145,NULL,5,4),
(343,18,5,2,1,NULL,NULL,252,1,84,79,219,144,NULL,5,NULL),
(344,18,6,2,1,NULL,NULL,256,4,79,84,219,144,NULL,3,4),
(345,19,1,2,1,NULL,NULL,258,2,84,79,228,135,NULL,5,NULL),
(346,19,2,2,1,NULL,4,258,0,84,79,228,134,NULL,5,NULL),
(347,19,3,2,1,NULL,NULL,259,1,82,79,228,130,NULL,6,NULL),
(348,19,4,2,1,NULL,NULL,265,6,79,82,228,128,NULL,3,6),
(349,19,5,2,1,NULL,NULL,271,6,79,82,228,129,NULL,3,6),
(350,19,6,2,1,NULL,NULL,273,2,79,82,228,135,NULL,3,NULL),
(351,20,1,2,1,NULL,NULL,279,6,82,79,224,135,NULL,6,6),
(352,20,2,2,1,NULL,5,279,0,82,79,224,134,NULL,6,NULL),
(353,20,3,2,1,NULL,6,279,0,81,79,224,133,NULL,7,NULL),
(354,20,4,2,1,1,NULL,280,0,4,79,224,140,'Leg Byes',8,NULL),
(355,20,5,2,1,NULL,NULL,282,2,79,4,224,135,NULL,3,NULL),
(356,20,6,2,1,NULL,NULL,286,4,79,4,224,135,NULL,3,4);


INSERT INTO per_ball_data VALUES
(357,1,1,2,1,NULL,NULL,0,0,214,10,97,135,NULL,1,NULL),
(358,1,2,2,1,1,NULL,1,0,214,10,97,137,'Wide',1,NULL),
(359,1,2,2,1,NULL,NULL,2,1,214,10,97,138,NULL,1,NULL),
(360,1,3,2,1,NULL,NULL,2,0,10,214,97,139,NULL,2,NULL),
(361,1,4,2,1,NULL,NULL,8,6,10,214,97,140,NULL,2,6),
(362,1,5,2,1,NULL,NULL,12,4,10,214,97,140,NULL,2,4),
(363,1,6,2,1,NULL,NULL,16,4,10,214,97,141,NULL,2,4),
(364,2,1,2,1,NULL,NULL,16,0,214,10,93,136,NULL,1,NULL),
(365,2,2,2,1,4,NULL,20,0,214,10,93,135,'Byes',1,NULL),
(366,2,3,2,1,NULL,1,20,0,214,10,93,136,NULL,1,NULL),
(367,2,4,2,1,NULL,NULL,24,4,216,10,93,135,NULL,3,4),
(368,2,5,2,1,NULL,2,24,0,216,10,93,136,NULL,3,NULL),
(369,2,6,2,1,NULL,NULL,25,1,217,10,93,137,NULL,4,NULL),
(370,3,1,2,1,NULL,NULL,25,0,217,10,97,139,NULL,4,NULL),
(371,3,2,2,1,NULL,NULL,29,4,217,10,97,138,NULL,4,4),
(372,3,3,2,1,NULL,NULL,29,0,217,10,97,137,NULL,4,NULL),
(373,3,4,2,1,NULL,NULL,33,4,217,10,97,136,NULL,4,4),
(374,3,5,2,1,NULL,NULL,35,2,217,10,97,135,NULL,4,NULL),
(375,3,6,2,1,NULL,NULL,35,0,217,10,97,136,NULL,4,NULL),
(376,4,1,2,1,NULL,NULL,35,0,10,217,93,135,NULL,2,NULL),
(377,4,2,2,1,NULL,NULL,35,0,10,217,93,136,NULL,2,NULL),
(378,4,3,2,1,NULL,NULL,39,4,10,217,93,137,NULL,2,4),
(379,4,4,2,1,NULL,NULL,39,0,10,217,93,138,NULL,2,NULL),
(380,4,5,2,1,1,NULL,40,0,10,217,93,139,'Wide',2,NULL),
(381,4,5,2,1,NULL,NULL,46,6,10,217,93,136,NULL,2,6),
(382,4,6,2,1,NULL,NULL,50,4,10,217,93,136,NULL,2,4),
(383,5,1,2,1,NULL,3,50,0,217,10,97,140,NULL,4,NULL),
(384,5,2,2,1,NULL,NULL,50,0,215,10,97,138,NULL,5,NULL),
(385,5,3,2,1,NULL,NULL,52,2,215,10,97,138,NULL,5,NULL),
(386,5,4,2,1,NULL,NULL,53,1,215,10,97,139,NULL,5,NULL),
(387,5,5,2,1,NULL,NULL,53,0,10,215,97,140,NULL,2,NULL),
(388,5,6,2,1,NULL,NULL,57,4,10,215,97,141,NULL,2,4),
(389,6,1,2,1,NULL,NULL,63,6,215,10,4,140,NULL,5,6),
(390,6,2,2,1,NULL,NULL,67,4,215,10,4,140,NULL,5,4),
(391,6,3,2,1,NULL,NULL,71,4,215,10,4,141,NULL,5,4),
(392,6,4,2,1,NULL,NULL,72,1,215,10,4,142,NULL,5,NULL),
(393,6,5,2,1,NULL,NULL,73,1,10,215,4,142,NULL,2,NULL),
(394,6,6,2,1,NULL,NULL,77,4,215,10,4,144,NULL,5,4),
(395,7,1,2,1,NULL,NULL,77,0,10,215,89,89,NULL,2,NULL),
(396,7,2,2,1,NULL,NULL,77,0,10,215,89,88,NULL,2,NULL),
(397,7,3,2,1,NULL,NULL,78,1,10,215,89,88,NULL,2,NULL),
(398,7,4,2,1,NULL,NULL,82,4,215,10,89,87,NULL,5,4),
(399,7,5,2,1,NULL,NULL,82,0,215,10,89,90,NULL,5,NULL),
(400,7,6,2,1,NULL,NULL,82,0,215,10,89,91,NULL,5,NULL),
(401,8,1,2,1,NULL,NULL,84,2,10,215,92,92,NULL,2,NULL),
(402,8,2,2,1,NULL,NULL,90,6,10,215,92,91,NULL,2,6),
(403,8,3,2,1,NULL,NULL,90,0,10,215,92,90,NULL,2,NULL),
(404,8,4,2,1,NULL,NULL,91,1,10,215,92,101,NULL,2,NULL),
(405,8,5,2,1,NULL,NULL,92,1,215,10,92,90,NULL,5,NULL),
(406,8,6,2,1,NULL,NULL,96,4,10,215,92,92,NULL,2,4),
(407,9,1,2,1,NULL,NULL,102,6,215,10,89,89,NULL,5,6),
(408,9,2,2,1,NULL,NULL,102,0,215,10,89,90,NULL,5,NULL),
(409,9,3,2,1,NULL,NULL,103,1,215,10,89,90,NULL,5,NULL),
(410,9,4,2,1,NULL,NULL,103,0,10,215,89,89,NULL,2,NULL),
(411,9,5,2,1,NULL,NULL,104,1,10,215,89,88,NULL,2,NULL),
(412,9,6,2,1,NULL,NULL,108,4,215,10,89,87,NULL,1,6),
(413,10,1,2,1,NULL,NULL,108,0,10,215,86,138,NULL,2,NULL),
(414,10,2,2,1,NULL,NULL,109,1,10,215,86,136,NULL,2,NULL),
(415,10,3,2,1,NULL,NULL,115,6,215,10,86,120,NULL,5,6),
(416,10,4,2,1,NULL,NULL,116,1,215,10,86,125,NULL,2,NULL),
(417,10,5,2,1,NULL,NULL,117,1,10,215,86,128,NULL,2,NULL),
(418,10,6,2,1,NULL,NULL,118,1,215,10,86,130,NULL,5,NULL),
(419,11,1,2,1,NULL,NULL,119,1,215,10,92,92,NULL,5,NULL),
(420,11,2,2,1,NULL,NULL,120,1,10,215,92,90,NULL,2,NULL),
(421,11,3,2,1,NULL,NULL,120,0,215,10,92,90,NULL,5,NULL),
(422,11,4,2,1,NULL,NULL,120,0,215,10,92,89,NULL,5,NULL),
(423,11,5,2,1,NULL,NULL,121,1,215,10,92,88,NULL,5,NULL),
(424,11,6,2,1,NULL,NULL,122,1,10,215,92,88,NULL,2,NULL),
(425,12,1,2,1,NULL,NULL,123,1,10,215,4,140,NULL,2,NULL),
(426,12,2,2,1,NULL,NULL,123,0,215,10,4,138,NULL,5,NULL),
(427,12,3,2,1,NULL,NULL,123,0,215,10,4,142,NULL,5,NULL),
(428,12,4,2,1,NULL,NULL,124,1,215,10,4,144,NULL,5,NULL),
(429,12,5,2,1,NULL,NULL,125,1,10,215,4,142,NULL,2,NULL),
(430,12,6,2,1,NULL,NULL,125,0,215,10,4,144,NULL,5,NULL),
(431,13,1,2,1,NULL,NULL,125,0,10,215,93,138,NULL,2,NULL),
(432,13,2,2,1,1,NULL,127,1,10,215,93,136,'No Ball',2,NULL),
(433,13,2,2,1,NULL,NULL,133,6,215,10,93,133,NULL,5,6),
(434,13,3,2,1,NULL,NULL,139,6,215,10,93,135,NULL,5,6),
(435,13,4,2,1,1,NULL,140,0,215,10,93,136,'Wide',5,NULL),
(436,13,4,2,1,NULL,NULL,146,6,215,10,93,135,NULL,5,6),
(437,13,5,2,1,NULL,NULL,147,1,215,10,93,136,NULL,5,NULL),
(438,13,6,2,1,NULL,NULL,151,4,10,215,93,135,NULL,2,4),
(439,14,1,2,1,1,NULL,152,0,215,10,86,135,'Wide',5,NULL),
(440,14,1,2,1,NULL,NULL,153,1,215,10,86,130,NULL,5,NULL),
(441,14,2,2,1,NULL,NULL,153,0,10,215,86,135,NULL,2,NULL),
(442,14,3,2,1,NULL,NULL,154,1,10,215,86,133,NULL,2,NULL),
(443,14,4,2,1,NULL,NULL,155,1,215,10,86,133,NULL,5,NULL),
(444,14,5,2,1,NULL,NULL,161,6,10,215,86,136,NULL,2,6),
(445,14,6,2,1,NULL,4,161,0,10,215,86,128,NULL,2,NULL),
(446,15,1,2,1,NULL,NULL,161,0,215,213,92,89,NULL,5,NULL),
(447,15,2,2,1,NULL,5,161,0,215,213,92,89,NULL,5,NULL),
(448,15,3,2,1,NULL,NULL,162,1,210,213,92,85,NULL,7,NULL),
(449,15,4,2,1,NULL,NULL,162,0,213,210,92,86,NULL,6,NULL),
(450,15,5,2,1,NULL,NULL,168,6,213,213,92,87,NULL,6,6),
(451,15,6,2,1,NULL,NULL,169,1,213,210,92,88,NULL,6,NULL),
(452,16,1,2,1,NULL,NULL,169,0,213,210,86,128,NULL,6,NULL),
(453,16,2,2,1,NULL,NULL,170,1,213,210,86,130,NULL,6,NULL),
(454,16,3,2,1,NULL,NULL,171,1,210,213,86,132,NULL,7,NULL),
(455,16,4,2,1,NULL,NULL,172,1,213,210,86,134,NULL,6,NULL),
(456,16,5,2,1,NULL,NULL,173,1,210,213,86,135,NULL,7,NULL),
(457,16,6,2,1,NULL,NULL,173,0,213,210,86,136,NULL,6,NULL),
(458,17,1,2,1,NULL,NULL,179,6,210,213,4,140,NULL,7,6),
(459,17,2,2,1,NULL,NULL,180,1,210,213,4,141,NULL,7,NULL),
(460,17,3,2,1,NULL,NULL,182,2,213,210,4,142,NULL,6,NULL),
(461,17,4,2,1,NULL,NULL,183,1,213,210,4,141,NULL,6,NULL),
(462,17,5,2,1,NULL,NULL,189,6,210,213,4,138,NULL,7,6),
(463,17,6,2,1,NULL,NULL,195,6,210,213,4,145,NULL,7,6),
(464,18,1,2,1,NULL,NULL,195,0,213,210,92,92,NULL,6,NULL),
(465,18,2,2,1,NULL,NULL,199,4,213,210,92,90,NULL,6,4),
(466,18,3,2,1,1,NULL,200,0,213,210,92,90,'Wide',6,NULL),
(467,18,3,2,1,NULL,NULL,206,6,213,210,92,89,NULL,6,6),
(468,18,4,2,1,NULL,NULL,207,1,213,210,92,89,NULL,6,NULL),
(469,18,5,2,1,NULL,NULL,213,6,210,213,92,89,NULL,7,6),
(470,18,6,2,1,NULL,NULL,217,4,210,213,92,90,NULL,7,4),
(471,19,1,2,1,NULL,NULL,217,0,213,210,4,140,NULL,6,NULL),
(472,19,2,2,1,NULL,NULL,218,1,213,210,4,140,NULL,6,NULL),
(473,19,3,2,1,1,NULL,220,1,210,213,4,141,'No Ball',7,NULL),
(474,19,3,2,1,NULL,NULL,222,2,213,210,4,142,NULL,6,NULL),
(475,19,4,2,1,1,NULL,223,0,213,210,4,143,'Wide',6,NULL),
(476,19,4,2,1,NULL,NULL,229,6,213,210,4,144,NULL,6,6),
(477,19,5,2,1,NULL,NULL,231,2,213,210,4,145,NULL,6,NULL),
(478,19,6,2,1,NULL,NULL,232,1,213,210,4,144,NULL,6,NULL),
(479,20,1,2,1,NULL,NULL,232,0,213,210,86,132,NULL,6,NULL),
(480,20,2,2,1,NULL,NULL,233,1,213,210,86,130,NULL,6,NULL),
(481,20,3,2,1,NULL,NULL,234,1,210,213,86,133,NULL,7,NULL),
(482,20,4,2,1,1,NULL,235,0,213,210,86,135,'Wide',6,NULL),
(483,20,4,2,1,NULL,NULL,241,6,213,210,86,135,NULL,6,6),
(484,20,5,2,1,NULL,6,241,0,213,210,86,136,NULL,6,NULL),
(485,20,6,2,1,NULL,NULL,242,1,219,210,86,137,NULL,8,NULL);


INSERT INTO per_ball_data
VALUES
(486,1,1,3,1,NULL,NULL,0,0,53,61,159,125,NULL,1,NULL),
(487,1,2,3,1,NULL,NULL,0,0,53,61,159,101,NULL,1,NULL),
(488,1,3,3,1,NULL,NULL,0,0,53,61,159,130,NULL,1,NULL),
(489,1,4,3,1,NULL,1,0,0,53,61,159,131,NULL,1,NULL),
(490,1,5,3,1,NULL,NULL,0,0,64,61,159,90,NULL,3,NULL),
(491,1,6,3,1,NULL,NULL,4,4,64,61,159,110,NULL,3,4),
(492,2,1,3,1,NULL,NULL,8,4,61,64,151,130,NULL,2,4),
(493,2,2,3,1,NULL,NULL,8,0,61,64,151,127,NULL,2,NULL),
(494,2,3,3,1,NULL,NULL,12,4,61,64,151,115,NULL,2,4),
(495,2,4,3,1,NULL,NULL,12,0,61,64,151,137,NULL,2,NULL),
(496,2,5,3,1,NULL,NULL,13,1,61,64,151,116,NULL,2,NULL),
(497,2,6,3,1,NULL,NULL,17,4,64,61,151,125,NULL,3,4),
(498,3,1,3,1,NULL,NULL,21,4,61,64,159,138,NULL,2,4),
(499,3,2,3,1,NULL,2,21,0,61,64,159,140,NULL,2,NULL),
(500,3,3,3,1,NULL,NULL,21,0,58,64,159,119,NULL,4,NULL),
(501,3,4,3,1,NULL,NULL,21,0,58,64,159,123,NULL,4,NULL),
(502,3,5,3,1,NULL,NULL,21,0,58,64,159,132,NULL,4,NULL),
(503,3,6,3,1,NULL,NULL,21,0,58,64,159,129,NULL,4,NULL),
(504,4,1,3,1,NULL,NULL,22,1,64,58,163,136,NULL,3,NULL),
(505,4,2,3,1,NULL,NULL,24,2,58,64,163,120,NULL,4,NULL),
(506,4,3,3,1,NULL,NULL,25,1,58,64,163,125,NULL,4,NULL),
(507,4,4,3,1,NULL,NULL,26,1,64,58,163,132,NULL,3,NULL),
(508,4,5,3,1,NULL,NULL,30,4,58,64,163,124,NULL,4,4),
(509,4,6,3,1,NULL,NULL,30,0,58,64,163,142,NULL,4,NULL),
(510,5,1,3,1,NULL,NULL,31,1,64,58,149,89,NULL,3,NULL),
(511,5,2,3,1,NULL,NULL,35,4,58,64,149,91,NULL,4,4),
(512,5,3,3,1,NULL,NULL,36,1,58,64,149,85,NULL,4,NULL),
(513,5,4,3,1,NULL,3,36,0,64,58,149,84,NULL,3,NULL),
(514,5,5,3,1,NULL,NULL,40,4,77,58,149,92,NULL,5,4),
(515,5,6,3,1,NULL,NULL,44,4,77,58,149,86,NULL,5,4),
(516,6,1,3,1,NULL,NULL,44,0,58,77,159,121,NULL,4,NULL),
(517,6,2,3,1,NULL,NULL,44,0,58,77,159,134,NULL,4,NULL),
(518,6,3,3,1,NULL,NULL,50,6,58,77,159,135,NULL,4,6),
(519,6,4,3,1,NULL,NULL,51,1,58,77,159,124,NULL,4,NULL),
(520,6,5,3,1,NULL,NULL,51,0,58,77,159,137,NULL,4,NULL),
(521,6,6,3,1,1,NULL,52,0,77,58,159,134,'No Ball',5,NULL),
(522,6,6,3,1,NULL,NULL,52,0,77,58,159,140,NULL,5,NULL),
(523,7,1,3,1,NULL,NULL,52,0,58,77,157,87,NULL,4,NULL),
(524,7,2,3,1,NULL,NULL,53,1,58,77,157,85,NULL,4,NULL),
(525,7,3,3,1,NULL,NULL,53,0,77,58,157,82,NULL,5,NULL),
(526,7,4,3,1,NULL,NULL,59,6,77,58,157,88,NULL,5,6),
(527,7,5,3,1,NULL,NULL,59,0,77,58,157,89,NULL,5,NULL),
(528,7,6,3,1,NULL,NULL,59,0,77,58,157,82,NULL,5,NULL),
(529,8,1,3,1,1,NULL,60,0,58,77,160,90,'Wide',4,NULL),
(530,8,1,3,1,NULL,NULL,60,0,58,77,160,87,NULL,4,NULL),
(531,8,2,3,1,NULL,NULL,60,0,58,77,160,85,NULL,4,NULL),
(532,8,3,3,1,NULL,NULL,61,1,58,77,160,88,NULL,4,NULL),
(533,8,4,3,1,NULL,NULL,62,1,77,58,160,82,NULL,5,NULL),
(534,8,5,3,1,NULL,NULL,64,2,58,77,160,80,NULL,4,NULL),
(535,8,6,3,1,NULL,NULL,66,2,58,77,160,85,NULL,4,NULL),
(536,9,1,3,1,NULL,NULL,72,6,77,58,157,91,NULL,5,6),
(537,9,2,3,1,NULL,NULL,72,0,77,58,157,81,NULL,5,NULL),
(538,9,3,3,1,NULL,NULL,72,0,77,58,157,84,NULL,5,NULL),
(539,9,4,3,1,NULL,NULL,74,2,77,58,157,79,NULL,5,NULL),
(540,9,5,3,1,NULL,NULL,75,1,77,58,157,86,NULL,5,NULL),
(541,9,6,3,1,NULL,NULL,76,1,58,77,157,81,NULL,4,NULL),
(542,10,1,3,1,NULL,NULL,77,1,58,77,149,85,NULL,4,NULL),
(543,10,2,3,1,NULL,NULL,78,1,77,58,149,87,NULL,5,NULL),
(544,10,3,3,1,NULL,NULL,79,1,58,77,149,88,NULL,4,NULL),
(545,10,4,3,1,NULL,NULL,80,1,77,58,149,82,NULL,5,NULL),
(546,10,5,3,1,NULL,NULL,81,1,58,77,149,89,NULL,4,NULL),
(547,10,6,3,1,NULL,NULL,82,1,77,58,149,80,NULL,5,NULL),
(548,11,1,3,1,4,NULL,86,0,77,58,160,81,'Byes',5,4),
(549,11,2,3,1,NULL,NULL,87,1,77,58,160,85,NULL,5,NULL),
(550,11,3,3,1,NULL,4,87,0,58,77,160,86,NULL,4,NULL),
(551,11,4,3,1,NULL,NULL,87,0,60,77,160,89,NULL,6,NULL),
(552,11,5,3,1,NULL,NULL,88,1,60,77,160,81,NULL,6,NULL),
(553,11,6,3,1,1,NULL,89,0,77,60,160,83,'Wide',5,NULL),
(554,11,6,3,1,NULL,NULL,91,2,77,60,160,82,NULL,5,NULL),
(555,12,1,3,1,NULL,NULL,91,0,60,77,149,85,NULL,6,NULL),
(556,12,2,3,1,NULL,NULL,91,0,60,77,149,81,NULL,6,NULL),
(557,12,3,3,1,NULL,NULL,91,0,60,77,149,90,NULL,6,NULL),
(558,12,4,3,1,NULL,NULL,92,1,60,77,149,86,NULL,6,NULL),
(559,12,5,3,1,NULL,NULL,92,0,77,60,149,91,NULL,5,NULL),
(560,12,6,3,1,NULL,NULL,92,0,77,60,149,89,NULL,5,NULL),
(561,13,1,3,1,1,NULL,93,0,60,77,160,91,'Wide',6,NULL),
(562,13,1,3,1,NULL,NULL,94,1,60,77,160,88,NULL,6,NULL),
(563,13,2,3,1,NULL,NULL,95,1,77,60,160,81,NULL,5,NULL),
(564,13,3,3,1,NULL,NULL,95,0,60,77,160,84,NULL,6,NULL),
(565,13,4,3,1,NULL,5,95,0,60,77,160,86,NULL,6,NULL),
(566,13,5,3,1,NULL,NULL,96,1,63,77,160,88,NULL,7,NULL),
(567,13,6,3,1,NULL,6,96,0,77,63,160,90,NULL,5,NULL),
(568,14,1,3,1,NULL,NULL,97,1,63,65,157,92,NULL,7,NULL),
(569,14,2,3,1,NULL,NULL,97,0,65,63,157,85,NULL,8,NULL),
(570,14,3,3,1,NULL,NULL,97,0,65,63,157,90,NULL,8,NULL),
(571,14,4,3,1,NULL,NULL,98,1,63,65,157,81,NULL,7,NULL),
(572,14,5,3,1,NULL,NULL,99,1,63,65,157,85,NULL,7,NULL),
(573,14,6,3,1,NULL,NULL,100,1,65,63,157,84,NULL,8,NULL),
(574,15,1,3,1,NULL,NULL,101,1,65,63,149,94,NULL,8,NULL),
(575,15,2,3,1,NULL,NULL,103,2,63,65,149,83,NULL,7,NULL),
(576,15,3,3,1,NULL,NULL,104,1,63,65,149,81,NULL,7,NULL),
(577,15,4,3,1,NULL,NULL,105,1,65,63,149,92,NULL,8,NULL),
(578,15,5,3,1,NULL,NULL,109,4,63,65,149,87,NULL,7,4),
(579,15,6,3,1,NULL,NULL,110,1,63,65,149,84,NULL,7,NULL),
(580,16,1,3,1,NULL,NULL,112,2,63,65,163,120,NULL,7,NULL),
(581,16,2,3,1,NULL,NULL,114,2,63,65,163,132,NULL,7,NULL),
(582,16,3,3,1,NULL,NULL,115,1,63,65,163,117,NULL,7,NULL),
(583,16,4,3,1,NULL,NULL,115,0,65,63,163,136,NULL,8,NULL),
(584,16,5,3,1,1,NULL,116,0,65,63,163,128,'Wide',8,NULL),
(585,16,5,3,1,NULL,NULL,117,1,65,63,163,130,NULL,8,NULL),
(586,16,6,3,1,NULL,NULL,118,1,63,65,163,125,NULL,7,NULL),
(587,17,1,3,1,NULL,7,118,0,63,65,160,120,NULL,7,NULL),
(588,17,2,3,1,NULL,NULL,118,0,71,65,160,130,NULL,9,NULL),
(589,17,3,3,1,NULL,NULL,119,1,71,65,160,119,NULL,9,NULL),
(590,17,4,3,1,NULL,NULL,120,1,65,71,160,129,NULL,8,NULL),
(591,17,5,3,1,NULL,NULL,120,0,71,65,160,117,NULL,9,NULL),
(592,17,6,3,1,NULL,NULL,120,0,71,65,160,126,NULL,9,NULL),
(593,18,1,3,1,NULL,NULL,124,4,65,71,163,132,NULL,8,4),
(594,18,2,3,1,NULL,NULL,124,0,65,71,163,127,NULL,8,NULL),
(595,18,3,3,1,NULL,NULL,125,1,65,71,163,131,NULL,8,NULL),
(596,18,4,3,1,NULL,NULL,127,2,71,65,163,124,NULL,9,NULL),
(597,18,5,3,1,1,NULL,128,0,71,65,163,125,NULL,9,NULL),
(598,18,6,3,1,NULL,8,128,0,65,71,163,134,NULL,8,NULL),
(599,19,1,3,1,NULL,NULL,132,4,71,70,159,136,NULL,9,4),
(600,19,2,3,1,NULL,NULL,138,6,71,70,159,125,NULL,9,6),
(601,19,3,3,1,NULL,NULL,139,1,71,70,159,133,NULL,9,NULL),
(602,19,4,3,1,NULL,NULL,140,1,70,71,159,138,NULL,10,NULL),
(603,19,5,3,1,NULL,NULL,141,1,71,70,159,128,NULL,9,NULL),
(604,19,6,3,1,NULL,9,141,0,70,71,159,137,NULL,10,NULL),
(605,20,1,3,1,NULL,NULL,143,2,71,75,163,126,NULL,9,NULL),
(606,20,2,3,1,NULL,NULL,149,6,71,75,163,130,NULL,9,6),
(607,20,3,3,1,NULL,NULL,150,1,71,75,163,124,NULL,9,NULL),
(608,20,4,3,1,NULL,NULL,151,1,75,71,163,135,NULL,11,NULL),
(609,20,5,3,1,NULL,NULL,151,0,71,75,163,137,NULL,9,NULL),
(610,20,6,3,1,NULL,NULL,155,4,71,75,163,127,NULL,9,NULL),
(611,1,1,3,2,NULL,NULL,2,2,148,144,70,134,NULL,1,NULL),
(612,1,2,3,2,NULL,NULL,2,0,148,144,70,128,NULL,1,NULL),
(613,1,3,3,2,NULL,NULL,3,1,148,144,70,137,NULL,1,NULL),
(614,1,4,3,2,NULL,NULL,4,1,144,148,70,129,NULL,2,NULL),
(615,1,5,3,2,1,NULL,5,0,148,144,70,132,'Wide',1,NULL),
(616,1,5,3,2,NULL,NULL,5,0,148,144,70,135,NULL,1,NULL),
(617,1,6,3,2,NULL,NULL,5,0,148,144,70,127,NULL,1,NULL),
(618,2,1,3,2,NULL,NULL,6,1,144,148,71,136,NULL,2,NULL),
(619,2,2,3,2,NULL,NULL,10,4,148,144,71,133,NULL,1,4),
(620,2,3,3,2,NULL,NULL,11,1,148,144,71,126,NULL,1,NULL),
(621,2,4,3,2,NULL,1,11,0,144,148,71,138,NULL,2,NULL),
(622,2,5,3,2,NULL,NULL,12,1,7,148,71,128,NULL,3,NULL),
(623,2,6,3,2,NULL,NULL,12,0,148,7,71,136,NULL,1,NULL),
(624,3,1,3,2,NULL,NULL,16,4,7,148,70,135,NULL,3,4),
(625,3,2,3,2,NULL,NULL,20,4,7,148,70,125,NULL,3,4),
(626,3,3,3,2,NULL,NULL,22,2,7,148,70,131,NULL,3,NULL),
(627,3,4,3,2,NULL,NULL,22,0,7,148,70,138,NULL,3,NULL),
(628,3,5,3,2,NULL,NULL,23,1,7,148,70,132,NULL,3,NULL),
(629,3,6,3,2,NULL,NULL,24,1,148,7,70,127,NULL,1,NULL),
(630,4,1,3,2,NULL,NULL,24,0,148,7,71,139,NULL,1,NULL),
(631,4,2,3,2,NULL,NULL,28,4,148,7,71,134,NULL,1,4),
(632,4,3,3,2,NULL,NULL,29,1,148,7,71,131,NULL,1,NULL),
(633,4,4,3,2,NULL,NULL,35,6,7,148,71,135,NULL,3,6),
(634,4,5,3,2,NULL,NULL,35,0,7,148,71,126,NULL,3,NULL),
(635,4,6,3,2,NULL,NULL,35,0,7,148,71,129,NULL,3,NULL),
(636,5,1,3,2,1,NULL,36,0,148,7,75,89,'Wide',1,NULL),
(637,5,1,3,2,NULL,NULL,37,1,148,7,75,96,NULL,1,NULL),
(638,5,2,3,2,NULL,NULL,41,4,7,148,75,86,NULL,3,4),
(639,5,3,3,2,NULL,NULL,45,4,7,148,75,79,NULL,3,4),
(640,5,4,3,2,NULL,NULL,46,1,7,148,75,91,NULL,3,NULL),
(641,5,5,3,2,NULL,NULL,47,1,148,7,75,88,NULL,1,NULL),
(642,5,6,3,2,NULL,NULL,48,1,7,148,75,85,NULL,3,NULL),
(643,6,1,3,2,NULL,NULL,48,0,7,148,65,94,NULL,3,NULL),
(644,6,2,3,2,NULL,NULL,48,0,7,148,65,89,NULL,3,NULL),
(645,6,3,3,2,NULL,NULL,54,6,7,148,65,86,NULL,3,6),
(646,6,4,3,2,NULL,NULL,54,0,7,148,65,95,NULL,3,NULL),
(647,6,5,3,2,NULL,NULL,58,4,7,148,65,84,NULL,3,4),
(648,6,6,3,2,NULL,NULL,62,4,7,148,65,91,NULL,3,4),
(649,7,1,3,2,NULL,NULL,64,2,148,7,64,92,NULL,1,NULL),
(650,7,2,3,2,NULL,NULL,65,1,148,7,64,91,NULL,1,NULL),
(651,7,3,3,2,NULL,NULL,71,6,7,148,64,88,NULL,3,6),
(652,7,4,3,2,NULL,NULL,72,1,7,148,64,79,NULL,3,NULL),
(653,7,5,3,2,NULL,NULL,73,1,148,7,64,89,NULL,1,NULL),
(654,7,6,3,2,NULL,NULL,74,1,7,148,64,85,NULL,3,NULL),
(655,8,1,3,2,NULL,NULL,75,1,7,148,78,90,NULL,3,NULL),
(656,8,2,3,2,NULL,NULL,76,1,148,7,78,80,NULL,1,NULL),
(657,8,3,3,2,NULL,NULL,78,2,7,148,78,83,NULL,3,NULL),
(658,8,4,3,2,NULL,NULL,78,0,7,148,78,92,NULL,3,NULL),
(659,8,5,3,2,NULL,2,78,0,7,148,78,93,NULL,3,NULL),
(660,8,6,3,2,NULL,NULL,79,1,158,148,78,86,NULL,4,NULL),
(661,9,1,3,2,3,NULL,82,0,158,148,64,88,'Wide',4,NULL),
(662,9,1,3,2,NULL,NULL,82,0,158,148,64,81,NULL,4,NULL),
(663,9,2,3,2,NULL,NULL,83,1,158,148,64,89,NULL,4,NULL),
(664,9,3,3,2,NULL,NULL,84,1,148,158,64,82,NULL,1,NULL),
(665,9,4,3,2,NULL,NULL,85,1,158,148,64,85,NULL,4,NULL),
(666,9,5,3,2,NULL,NULL,86,1,148,158,64,91,NULL,1,NULL),
(667,9,6,3,2,NULL,NULL,92,6,158,148,64,84,NULL,4,6),
(668,10,1,3,2,NULL,NULL,94,2,148,158,78,83,NULL,1,NULL),
(669,10,2,3,2,NULL,NULL,95,1,148,158,78,82,NULL,1,NULL),	
(670,10,3,3,2,NULL,NULL,95,0,158,148,78,92,NULL,4,NULL),
(671,10,4,3,2,NULL,3,95,0,158,148,78,86,NULL,4,NULL),
(672,10,5,3,2,NULL,NULL,96,1,153,148,78,82,NULL,5,NULL),
(673,10,6,3,2,NULL,NULL,96,0,148,153,78,81,NULL,1,NULL),
(674,11,1,3,2,NULL,NULL,97,1,153,148,65,90,NULL,5,NULL),
(675,11,2,3,2,NULL,NULL,97,0,148,153,65,94,NULL,1,NULL),
(676,11,3,3,2,NULL,NULL,98,1,148,153,65,89,NULL,1,NULL),
(677,11,4,3,2,NULL,NULL,99,1,153,148,65,80,NULL,5,NULL),
(678,11,5,3,2,NULL,NULL,99,0,148,153,65,84,NULL,1,NULL),
(679,11,6,3,2,NULL,NULL,100,1,148,153,65,79,NULL,1,NULL),
(680,12,1,3,2,NULL,NULL,106,6,148,153,78,92,NULL,1,6),
(681,12,2,3,2,NULL,NULL,107,1,148,153,78,87,NULL,1,NULL),
(682,12,3,3,2,NULL,NULL,107,0,153,148,78,82,NULL,5,NULL),
(683,12,4,3,2,NULL,4,107,0,153,148,78,83,NULL,5,NULL),
(684,12,5,3,2,NULL,NULL,108,1,151,148,78,92,NULL,6,NULL),
(685,12,6,3,2,NULL,NULL,108,0,148,151,78,84,NULL,1,NULL),
(686,13,1,3,2,NULL,NULL,108,0,151,148,64,93,NULL,6,NULL),
(687,13,2,3,2,NULL,NULL,108,0,151,148,64,83,NULL,6,NULL),
(688,13,3,3,2,NULL,NULL,109,1,151,148,64,87,NULL,6,NULL),
(689,13,4,3,2,NULL,NULL,111,2,148,151,64,79,NULL,1,NULL),
(690,13,5,3,2,NULL,NULL,111,0,148,151,64,89,NULL,1,NULL),
(691,13,6,3,2,NULL,NULL,112,1,148,151,64,85,NULL,1,NULL),
(692,14,1,3,2,NULL,NULL,113,1,148,151,63,92,NULL,1,NULL),
(693,14,2,3,2,NULL,NULL,113,0,151,148,63,84,NULL,6,NULL),
(694,14,3,3,2,NULL,NULL,114,1,151,148,63,90,NULL,6,NULL),
(695,14,4,3,2,NULL,NULL,115,1,148,151,63,84,NULL,1,NULL),
(696,14,5,3,2,NULL,NULL,115,0,151,148,63,86,NULL,6,NULL),
(697,14,6,3,2,NULL,NULL,116,1,151,148,63,82,NULL,6,NULL),
(698,15,1,3,2,NULL,5,116,0,151,148,64,83,NULL,6,NULL),
(699,15,2,3,2,NULL,NULL,116,0,157,148,64,78,NULL,7,NULL),
(700,15,3,3,2,NULL,NULL,116,0,157,148,64,82,NULL,7,NULL),
(701,15,4,3,2,NULL,NULL,117,1,157,148,64,94,NULL,7,NULL),
(702,15,5,3,2,NULL,NULL,118,1,148,157,64,86,NULL,1,NULL),
(703,15,6,3,2,NULL,NULL,119,1,157,148,64,88,NULL,7,NULL),
(704,16,1,3,2,NULL,NULL,120,1,157,148,63,85,NULL,7,NULL),
(705,16,2,3,2,NULL,NULL,121,1,148,157,63,83,NULL,1,NULL),
(706,16,3,3,2,NULL,NULL,122,1,157,148,63,82,NULL,7,NULL),
(707,16,4,3,2,NULL,NULL,123,1,148,157,63,95,NULL,1,NULL),
(708,16,5,3,2,NULL,NULL,124,1,157,148,63,81,NULL,7,NULL),
(709,16,6,3,2,NULL,NULL,125,1,148,157,63,85,NULL,1,NULL),
(710,17,1,3,2,NULL,NULL,126,1,148,157,70,123,NULL,1,NULL),
(711,17,2,3,2,NULL,NULL,130,4,157,148,70,131,NULL,7,4),
(712,17,3,3,2,NULL,NULL,132,2,157,148,70,135,NULL,7,NULL),
(713,17,4,3,2,NULL,NULL,133,1,157,148,70,128,NULL,7,NULL),
(714,17,5,3,2,NULL,NULL,134,1,148,157,70,124,NULL,1,NULL),
(715,17,6,3,2,NULL,NULL,135,1,157,148,70,126,NULL,7,NULL),
(716,18,1,3,2,NULL,NULL,135,0,157,148,78,83,NULL,7,NULL),
(717,18,2,3,2,NULL,NULL,136,1,157,148,78,86,NULL,7,NULL),
(718,18,3,3,2,NULL,NULL,142,6,148,157,78,82,NULL,1,6),
(719,18,4,3,2,NULL,NULL,143,1,148,157,78,88,NULL,1,NULL),
(720,18,5,3,2,NULL,NULL,144,1,157,148,78,84,NULL,7,NULL),
(721,18,6,3,2,NULL,NULL,150,6,148,157,78,79,NULL,1,6),
(722,19,1,3,2,NULL,NULL,152,2,157,148,63,92,NULL,7,NULL),
(723,19,2,3,2,NULL,NULL,152,0,157,148,63,87,NULL,7,NULL),
(724,19,3,3,2,NULL,NULL,152,0,157,148,63,86,NULL,7,NULL),
(725,19,4,3,2,NULL,6,152,0,157,148,63,91,NULL,7,NULL),
(726,19,5,3,2,NULL,NULL,152,0,142,148,63,82,NULL,8,NULL),
(727,19,6,3,2,NULL,NULL,152,0,142,148,63,85,NULL,8,NULL),
(728,20,1,3,2,NULL,NULL,158,6,148,142,65,89,NULL,1,6);


INSERT INTO per_ball_data
VALUES
(729,1,1,5,1,NULL,NULL,0,0,184,172,26,145.00,NULL,1,NULL),
(730,1,2,5,1,NULL,NULL,4,4,184,172,26,144.90,NULL,1,4),
(731,1,3,5,1,4,NULL,8,0,184,172,26,144.80,'Leg Byes',1,NULL),
(732,1,4,5,1,NULL,NULL,8,0,184,172,26,140.80,NULL,1,NULL),
(733,1,5,5,1,NULL,NULL,8,0,184,172,26,138.60,NULL,1,NULL),
(734,1,6,5,1,NULL,NULL,8,0,184,172,26,135.90,NULL,1,NULL),
(735,2,1,5,1,NULL,NULL,8,0,172,184,25,135.60,NULL,2,NULL),
(736,2,2,5,1,NULL,NULL,9,1,172,184,25,136.00,NULL,2,NULL),
(737,2,3,5,1,NULL,NULL,11,2,184,172,25,135.50,NULL,1,NULL),
(738,2,4,5,1,NULL,NULL,12,1,184,172,25,130.60,NULL,1,NULL),
(739,2,5,5,1,NULL,NULL,12,0,172,184,25,135.60,NULL,2,NULL),
(740,2,6,5,1,NULL,NULL,16,4,172,184,25,128.90,NULL,2,4),
(741,3,1,5,1,1,NULL,17,0,184,172,26,140.00,'Leg Byes',1,NULL),
(742,3,2,5,1,NULL,NULL,17,0,172,184,26,141.00,NULL,2,NULL),
(743,3,3,5,1,NULL,NULL,17,0,172,184,26,138.90,NULL,2,NULL),
(744,3,4,5,1,1,NULL,18,0,172,184,26,135.60,'Leg Byes',2,NULL),
(745,3,5,5,1,NULL,NULL,24,6,184,172,26,134.90,NULL,1,6),
(746,3,6,5,1,NULL,NULL,28,4,184,172,26,140.00,NULL,1,4),
(747,4,1,5,1,NULL,1,28,0,172,184,25,126.80,NULL,2,NULL),
(748,4,2,5,1,NULL,NULL,32,4,8,184,25,130.60,NULL,3,4),
(749,4,3,5,1,NULL,NULL,34,2,8,184,25,135.60,NULL,3,NULL),
(750,4,4,5,1,NULL,NULL,34,0,8,184,25,138.90,NULL,3,NULL),
(751,4,5,5,1,NULL,NULL,40,6,8,184,25,130.90,NULL,3,6),
(752,4,6,5,1,NULL,NULL,42,2,8,184,25,131.50,NULL,3,NULL),
(753,5,1,5,1,1,NULL,43,0,184,8,20,125.50,'Wide',1,NULL),
(754,5,1,5,1,NULL,NULL,47,4,184,8,20,123.60,NULL,1,4),
(755,5,2,5,1,NULL,NULL,47,0,184,8,20,130.90,NULL,1,NULL),
(756,5,3,5,1,NULL,NULL,51,4,184,8,20,136.90,NULL,1,4),
(757,5,4,5,1,NULL,NULL,57,6,184,8,20,130.00,NULL,1,6),
(758,5,5,5,1,NULL,NULL,61,4,184,8,20,130.00,NULL,1,4),
(759,5,6,5,1,NULL,NULL,63,2,184,8,20,129.00,NULL,1,NULL),
(760,6,1,5,1,NULL,NULL,63,0,8,184,25,135.00,NULL,3,NULL),
(761,6,2,5,1,1,NULL,64,0,8,184,25,133.00,'Leg Byes',3,NULL),
(762,6,3,5,1,NULL,NULL,64,0,184,8,25,133.00,NULL,1,NULL),
(763,6,4,5,1,NULL,NULL,68,4,184,8,25,139.60,NULL,1,4),
(764,6,5,5,1,NULL,NULL,69,1,184,8,25,129.00,NULL,1,NULL),
(765,6,6,5,1,NULL,NULL,73,4,8,184,25,132.00,NULL,3,4),
(766,7,1,5,1,NULL,NULL,77,4,184,8,34,85.90,NULL,1,4),
(767,7,2,5,1,NULL,NULL,78,1,184,8,34,86.00,NULL,1,NULL),
(768,7,3,5,1,NULL,NULL,79,1,8,184,34,100.00,NULL,3,NULL),
(769,7,4,5,1,NULL,2,79,0,184,8,34,95.00,NULL,1,NULL),
(770,7,5,5,1,NULL,NULL,85,6,182,8,34,95.50,NULL,4,6),
(771,7,6,5,1,NULL,NULL,85,0,182,8,34,89.00,NULL,4,NULL),
(772,8,1,5,1,NULL,NULL,89,4,8,182,27,143.00,NULL,3,4),
(773,8,2,5,1,NULL,NULL,89,0,8,182,27,138.00,NULL,3,NULL),
(774,8,3,5,1,NULL,NULL,90,1,8,182,27,138.00,NULL,3,NULL),
(775,8,4,5,1,NULL,NULL,91,1,182,8,27,137.00,NULL,4,NULL),
(776,8,5,5,1,NULL,NULL,93,2,8,182,27,140.00,NULL,3,NULL),
(777,8,6,5,1,NULL,NULL,94,1,8,182,27,140.00,NULL,3,NULL),
(778,9,1,5,1,NULL,NULL,95,1,8,182,21,85.00,NULL,3,NULL),
(779,9,2,5,1,NULL,NULL,95,0,182,8,21,86.00,NULL,4,NULL),
(780,9,3,5,1,NULL,NULL,95,0,182,8,21,85.00,NULL,4,NULL),
(781,9,4,5,1,NULL,NULL,95,0,182,8,21,87.50,NULL,4,NULL),
(782,9,5,5,1,NULL,NULL,96,1,182,8,21,88.00,NULL,4,NULL),
(783,9,6,5,1,NULL,NULL,96,0,8,182,21,89.00,NULL,3,NULL),
(784,10,1,5,1,NULL,NULL,100,4,182,8,27,140.00,NULL,4,4),
(785,10,2,5,1,NULL,NULL,100,0,182,8,27,139.00,NULL,4,NULL),
(786,10,3,5,1,NULL,NULL,100,0,182,8,27,143.00,NULL,4,NULL),
(787,10,4,5,1,NULL,NULL,104,4,182,8,27,140.00,NULL,4,4),
(788,10,5,5,1,NULL,NULL,104,0,182,8,27,137.00,NULL,4,NULL),
(789,10,6,5,1,NULL,NULL,104,0,182,8,27,138.00,NULL,4,NULL),
(790,11,1,5,1,NULL,NULL,105,1,8,182,21,89.00,NULL,3,NULL),
(791,11,2,5,1,NULL,NULL,105,0,182,8,21,90.00,NULL,4,NULL),
(792,11,3,5,1,NULL,3,105,0,182,8,21,90.00,NULL,4,NULL),
(793,11,4,5,1,NULL,4,105,0,176,8,21,89.00,NULL,5,NULL),
(794,11,5,5,1,NULL,NULL,105,0,175,8,21,90.00,NULL,6,NULL),
(795,11,6,5,1,NULL,NULL,105,0,175,8,21,91.00,NULL,6,NULL),
(796,12,1,5,1,NULL,NULL,106,1,8,175,34,90.00,NULL,3,NULL),
(797,12,2,5,1,NULL,NULL,106,0,175,8,34,90.00,NULL,6,NULL),
(798,12,3,5,1,NULL,NULL,106,0,175,8,34,91.20,NULL,6,NULL),
(799,12,4,5,1,NULL,NULL,107,1,175,8,34,85.00,NULL,6,NULL),
(800,12,5,5,1,NULL,NULL,108,1,8,175,34,96.00,NULL,3,NULL),
(801,12,6,5,1,NULL,NULL,108,0,175,8,34,90.00,NULL,6,NULL),
(802,13,1,5,1,NULL,NULL,114,6,8,175,21,89.00,NULL,3,6),
(803,13,2,5,1,NULL,NULL,114,0,8,175,21,90.00,NULL,3,NULL),
(804,13,3,5,1,NULL,NULL,120,6,8,175,21,91.00,NULL,3,6),
(805,13,4,5,1,NULL,NULL,121,1,8,175,21,90.00,NULL,3,NULL),
(806,13,5,5,1,NULL,NULL,125,4,175,8,21,91.00,NULL,6,4),
(807,13,6,5,1,NULL,NULL,125,0,175,8,21,92.00,NULL,6,NULL),
(808,14,1,5,1,NULL,NULL,125,0,8,175,34,92.00,NULL,3,NULL),
(809,14,2,5,1,NULL,NULL,125,0,8,175,34,90.00,NULL,3,NULL),
(810,14,3,5,1,NULL,NULL,126,1,8,175,34,90.00,NULL,3,NULL),
(811,14,4,5,1,NULL,NULL,127,1,175,8,34,90.00,NULL,6,NULL),
(812,14,5,5,1,NULL,NULL,133,6,8,175,34,92.00,NULL,3,6),
(813,14,6,5,1,NULL,NULL,139,6,8,175,34,89.50,NULL,3,6),
(814,15,1,5,1,NULL,NULL,139,0,175,8,26,140.00,NULL,6,NULL),
(815,15,2,5,1,NULL,NULL,145,6,175,8,26,142.00,NULL,6,6),
(816,15,3,5,1,NULL,NULL,146,1,175,8,26,135.00,NULL,6,NULL),
(817,15,4,5,1,1,NULL,147,0,8,175,26,136.00,'Wide',3,NULL),
(818,15,4,5,1,NULL,NULL,148,1,8,175,26,139.80,NULL,3,NULL),
(819,15,5,5,1,1,NULL,149,0,175,8,26,138.80,'Wide',6,NULL),
(820,15,5,5,1,NULL,NULL,150,1,175,8,26,140.60,NULL,6,NULL),
(821,15,6,5,1,NULL,NULL,156,6,8,175,26,140.00,NULL,3,6),
(822,16,1,5,1,NULL,NULL,162,6,175,8,21,90.00,NULL,6,6),
(823,16,2,5,1,NULL,5,162,0,175,8,21,91.00,NULL,6,NULL),
(824,16,3,5,1,NULL,NULL,163,1,173,8,21,89.00,NULL,7,NULL),
(825,16,4,5,1,NULL,NULL,164,1,8,173,21,88.00,NULL,3,NULL),
(826,16,5,5,1,NULL,NULL,165,1,173,8,21,89.00,NULL,7,NULL),
(827,16,6,5,1,NULL,NULL,166,1,8,173,21,90.80,NULL,3,NULL),
(828,17,1,5,1,NULL,NULL,166,0,8,173,27,140.00,NULL,3,NULL),
(829,17,2,5,1,NULL,NULL,172,6,8,173,27,140.00,NULL,3,6),
(830,17,3,5,1,NULL,NULL,176,4,8,173,27,141.50,NULL,3,4),
(831,17,4,5,1,NULL,NULL,182,6,8,173,27,143.50,NULL,3,6),
(832,17,5,5,1,NULL,NULL,188,6,8,173,27,138.90,NULL,3,6),
(833,17,6,5,1,NULL,NULL,190,2,8,173,27,138.80,NULL,3,NULL),
(834,18,1,5,1,1,NULL,191,0,173,8,34,90.00,'Leg Byes',7,NULL),
(835,18,2,5,1,NULL,NULL,192,1,8,173,34,89.80,NULL,3,NULL),
(836,18,3,5,1,NULL,NULL,198,6,173,8,34,88.80,NULL,7,6),
(837,18,4,5,1,NULL,NULL,202,4,173,8,34,89.70,NULL,7,4),
(838,18,5,5,1,NULL,NULL,204,2,173,8,34,90.00,NULL,7,NULL),
(839,18,6,5,1,NULL,NULL,210,6,173,8,34,79.80,NULL,7,6),
(840,19,1,5,1,NULL,NULL,214,4,8,173,25,135.00,NULL,3,4),
(841,19,2,5,1,1,NULL,215,0,8,173,25,134.00,'Wide',3,NULL),
(842,19,2,5,1,1,NULL,216,0,8,173,25,135.00,'Wide',3,NULL),
(843,19,2,5,1,NULL,NULL,217,1,8,173,25,133.00,NULL,3,NULL),
(844,19,3,5,1,NULL,NULL,217,0,173,8,25,130.50,NULL,7,NULL),
(845,19,4,5,1,NULL,NULL,218,1,173,8,25,131.50,NULL,7,NULL),
(846,19,5,5,1,NULL,NULL,219,1,8,173,25,136.00,NULL,3,NULL),
(847,19,6,5,1,NULL,NULL,220,1,173,8,25,137.00,NULL,7,NULL),
(848,20,1,5,1,NULL,NULL,224,4,173,8,26,140.00,NULL,7,4),
(849,20,2,5,1,NULL,NULL,226,2,173,8,26,135.00,NULL,7,NULL),
(850,20,3,5,1,NULL,NULL,230,4,173,8,26,137.00,NULL,7,4),
(851,20,4,5,1,NULL,NULL,234,4,173,8,26,138.00,NULL,7,4),
(852,20,5,5,1,1,NULL,235,0,173,8,26,139.00,'Wide',7,NULL),
(853,20,5,5,1,NULL,NULL,239,4,173,8,26,140.00,NULL,7,4),
(854,20,6,5,1,NULL,NULL,243,4,173,8,26,140.00,NULL,7,4);


INSERT INTO per_ball_data
VALUES
(855,1,1,5,2,NULL,NULL,4,4,11,1,166,141.00,NULL,1,NULL),
(856,1,2,5,2,NULL,NULL,4,0,11,1,166,142.00,NULL,1,NULL),
(857,1,3,5,2,NULL,NULL,4,0,11,1,166,142.50,NULL,1,NULL),
(858,1,4,5,2,NULL,NULL,4,0,11,1,166,143.00,NULL,1,NULL),
(859,1,5,5,2,NULL,NULL,4,0,11,1,166,140.00,NULL,1,NULL),
(860,1,6,5,2,NULL,NULL,5,1,11,1,166,138.90,NULL,1,NULL),
(861,2,1,5,2,NULL,NULL,5,0,11,1,182,135.00,NULL,1,NULL),
(862,2,2,5,2,NULL,NULL,6,1,11,1,182,133.00,NULL,1,NULL),
(863,2,3,5,2,NULL,NULL,6,0,1,11,182,130.00,NULL,2,NULL),
(864,2,4,5,2,NULL,NULL,7,1,1,11,182,135.00,NULL,2,NULL),
(865,2,5,5,2,NULL,NULL,9,2,11,1,182,129.00,NULL,1,NULL),
(866,2,6,5,2,NULL,NULL,15,6,11,1,182,139.00,NULL,1,6),
(867,3,1,5,2,NULL,NULL,16,1,1,11,166,140.00,NULL,2,NULL),
(868,3,2,5,2,NULL,NULL,16,0,11,1,166,138.00,NULL,1,NULL),
(869,3,3,5,2,NULL,NULL,16,0,11,1,166,139.00,NULL,1,NULL),
(870,3,4,5,2,NULL,NULL,16,0,11,1,166,150.00,NULL,1,NULL),
(871,3,5,5,2,NULL,NULL,16,0,11,1,166,148.00,NULL,1,NULL),
(872,3,6,5,2,NULL,NULL,17,1,11,1,166,145.00,NULL,1,NULL),
(873,4,1,5,2,NULL,NULL,18,1,11,1,182,138.00,NULL,1,NULL),
(874,4,2,5,2,NULL,NULL,24,6,1,11,182,135.00,NULL,2,6),
(875,4,3,5,2,NULL,NULL,26,2,1,11,182,133.00,NULL,2,NULL),
(876,4,4,5,2,NULL,NULL,32,6,1,11,182,133.00,NULL,2,6),
(877,4,5,5,2,NULL,NULL,32,0,1,11,182,136.80,NULL,2,NULL),
(878,4,6,5,2,NULL,NULL,36,4,1,11,182,137.90,NULL,2,4),
(879,5,1,5,2,NULL,NULL,37,1,11,1,180,140.00,NULL,1,NULL),
(880,5,2,5,2,NULL,NULL,38,1,1,11,180,138.00,NULL,2,NULL),
(881,5,3,5,2,NULL,NULL,44,6,11,1,180,139.00,NULL,1,6),
(882,5,4,5,2,1,NULL,45,0,11,1,180,140.00,'Leg Byes',1,NULL),
(883,5,5,5,2,NULL,NULL,45,0,1,11,180,135.00,NULL,2,NULL),
(884,5,6,5,2,NULL,NULL,51,6,1,11,180,130.00,NULL,2,6),
(885,6,1,5,2,NULL,NULL,53,2,11,1,176,85.00,NULL,1,NULL),
(886,6,2,5,2,1,NULL,54,0,11,1,176,89.00,'Wide',1,NULL),
(887,6,2,5,2,1,NULL,55,0,11,1,176,90.00,'Leg Byes',1,NULL),
(888,6,3,5,2,NULL,NULL,59,4,1,11,176,90.50,NULL,2,4),
(889,6,4,5,2,NULL,NULL,61,2,1,11,176,86.80,NULL,2,NULL),
(890,6,5,5,2,NULL,1,61,0,1,11,176,95.80,NULL,2,NULL),
(891,6,6,5,2,NULL,NULL,61,0,12,11,176,93.60,NULL,3,NULL),
(892,7,1,5,2,NULL,NULL,65,4,11,12,175,128.00,NULL,1,4),
(893,7,2,5,2,NULL,NULL,66,1,11,12,175,132.00,NULL,1,NULL),
(894,7,3,5,2,NULL,NULL,68,2,12,11,175,133.00,NULL,3,NULL),
(895,7,4,5,2,NULL,NULL,68,0,12,11,175,134.00,NULL,3,NULL),
(896,7,5,5,2,NULL,NULL,69,1,12,11,175,130.00,NULL,3,NULL),
(897,7,6,5,2,NULL,NULL,75,6,11,12,175,136.00,NULL,1,6),
(898,8,1,5,2,NULL,NULL,76,1,12,11,174,89.50,NULL,3,NULL),
(899,8,2,5,2,NULL,NULL,80,4,11,12,174,89.50,NULL,1,4),
(900,8,3,5,2,NULL,NULL,80,0,11,12,174,87.00,NULL,1,NULL),
(901,8,4,5,2,NULL,NULL,81,1,11,12,174,88.90,NULL,1,NULL),
(902,8,5,5,2,NULL,NULL,81,0,12,11,174,87.90,NULL,3,NULL),
(903,8,6,5,2,NULL,NULL,82,1,12,11,174,91.00,NULL,3,NULL),
(904,9,1,5,2,NULL,NULL,86,4,12,11,180,138.00,NULL,3,4),
(905,9,2,5,2,NULL,NULL,90,4,12,11,180,136.90,NULL,3,4),
(906,9,3,5,2,NULL,NULL,90,0,12,11,180,138.70,NULL,3,NULL),
(907,9,4,5,2,NULL,NULL,90,0,12,11,180,136.50,NULL,3,NULL),
(908,9,5,5,2,NULL,NULL,91,1,12,11,180,140.50,NULL,3,NULL),
(909,9,6,5,2,1,NULL,92,0,11,12,180,138.90,'Wide',1,NULL),
(910,9,6,5,2,NULL,NULL,93,1,11,12,180,135.00,NULL,1,NULL),
(911,10,1,5,2,NULL,NULL,99,6,11,12,174,89.00,NULL,1,6),
(912,10,2,5,2,NULL,NULL,100,1,11,12,174,95.80,NULL,1,NULL),
(913,10,3,5,2,1,NULL,101,0,12,11,174,92.80,'Leg Byes',3,NULL),
(914,10,4,5,2,NULL,NULL,102,1,11,12,174,90.70,NULL,1,NULL),
(915,10,5,5,2,NULL,NULL,103,1,12,11,174,90.00,NULL,3,NULL),
(916,10,6,5,2,NULL,NULL,104,1,11,12,174,80.90,NULL,1,NULL),
(917,11,1,5,2,NULL,NULL,105,1,11,12,176,89.80,NULL,1,NULL),
(918,11,2,5,2,NULL,NULL,107,2,12,11,176,92.60,NULL,3,NULL),
(919,11,3,5,2,NULL,NULL,108,1,12,11,176,95.60,NULL,3,NULL),
(920,11,4,5,2,NULL,NULL,114,6,11,12,176,92.60,NULL,1,6),
(921,11,5,5,2,NULL,NULL,115,1,11,12,176,89.70,NULL,1,NULL),
(922,11,6,5,2,NULL,NULL,121,6,12,11,176,88.00,NULL,3,6),
(923,12,1,5,2,NULL,NULL,125,4,11,12,174,90.00,NULL,1,NULL),
(924,12,2,5,2,1,NULL,126,0,11,12,174,89.90,'Wide',1,NULL),
(925,12,2,5,2,1,NULL,127,0,11,12,174,90.80,'Leg Byes',1,NULL),
(926,12,3,5,2,NULL,NULL,128,1,12,11,174,91.00,NULL,3,NULL),
(927,12,4,5,2,NULL,NULL,134,6,11,12,174,92.00,NULL,1,6),
(928,12,5,5,2,NULL,NULL,138,4,11,12,174,87.90,NULL,1,4),
(929,12,6,5,2,NULL,NULL,138,0,11,12,174,88.60,NULL,1,NULL),
(930,13,1,5,2,NULL,NULL,144,6,12,11,166,140.00,NULL,3,6),
(931,13,2,5,2,NULL,NULL,145,1,12,11,166,140.00,NULL,3,NULL),
(932,13,3,5,2,NULL,2,145,0,11,12,166,140.00,NULL,1,NULL),
(933,13,4,5,2,NULL,NULL,146,1,15,12,166,139.60,NULL,4,NULL),
(934,13,5,5,2,NULL,NULL,150,4,12,15,166,138.90,NULL,3,4),
(935,13,6,5,2,NULL,NULL,152,2,12,15,166,135.00,NULL,3,NULL),
(936,14,1,5,2,NULL,NULL,158,6,15,12,175,128.00,NULL,4,6),
(937,14,2,5,2,NULL,NULL,162,4,15,12,175,130.00,NULL,4,4),
(938,14,3,5,2,NULL,NULL,162,0,15,12,175,135.00,NULL,4,NULL),
(939,14,4,5,2,NULL,NULL,168,0,15,12,175,134.00,NULL,4,6),
(940,14,5,5,2,NULL,NULL,168,0,15,12,175,133.50,NULL,4,NULL),
(941,14,6,5,2,NULL,NULL,169,1,15,12,175,133.60,NULL,4,NULL),
(942,15,1,5,2,NULL,NULL,170,1,15,12,178,140.00,NULL,4,NULL),
(943,15,2,5,2,NULL,NULL,171,1,12,15,178,138.00,NULL,3,NULL),
(944,15,3,5,2,NULL,NULL,171,0,15,12,178,138.90,NULL,4,NULL),
(945,15,4,5,2,1,NULL,172,0,15,12,178,134.60,'Wide',4,NULL),
(946,15,4,5,2,NULL,NULL,172,0,15,12,178,133.00,NULL,4,NULL),
(947,15,5,5,2,NULL,NULL,173,1,15,12,178,133.60,NULL,4,NULL),
(948,15,6,5,2,NULL,NULL,174,1,12,15,178,135.90,NULL,3,NULL),
(949,16,1,5,2,NULL,NULL,176,2,12,15,180,140.00,NULL,3,NULL),
(950,16,2,5,2,NULL,NULL,177,1,12,15,180,136.00,NULL,3,NULL),
(951,16,3,5,2,NULL,NULL,178,1,15,12,180,135.60,NULL,4,NULL),
(952,16,4,5,2,NULL,NULL,179,1,12,15,180,135.50,NULL,3,NULL),
(953,16,5,5,2,NULL,NULL,180,1,15,12,180,134.50,NULL,4,NULL),
(954,16,6,5,2,NULL,NULL,182,2,12,15,180,136.00,NULL,3,NULL),
(955,17,1,5,2,1,NULL,183,0,15,12,178,134.60,'Wide',4,NULL),
(956,17,1,5,2,1,NULL,184,0,15,12,178,135.00,'Wide',4,NULL),
(957,17,1,5,2,NULL,NULL,184,0,15,12,178,136.90,NULL,4,NULL),
(958,17,2,5,2,NULL,NULL,185,0,15,12,178,134.50,NULL,4,NULL),
(959,17,3,5,2,NULL,NULL,185,0,15,12,178,136.00,NULL,4,NULL),
(960,17,4,5,2,NULL,NULL,185,0,15,12,178,129.00,NULL,4,NULL),
(961,17,5,5,2,NULL,NULL,186,1,15,12,178,130.50,NULL,4,NULL),
(962,17,6,5,2,NULL,NULL,187,1,12,15,178,136.90,NULL,3,NULL),
(963,17,2,5,2,1,NULL,185,0,15,12,178,135.60,'Wide',4,NULL),
(964,18,1,5,2,NULL,NULL,188,1,12,15,180,138.00,NULL,3,NULL),
(965,18,2,5,2,NULL,NULL,192,4,15,12,180,138.50,NULL,4,4),
(966,18,3,5,2,1,NULL,192,0,15,12,180,140.00,'Leg Byes',4,NULL),
(967,18,4,5,2,NULL,NULL,196,4,12,15,180,141.00,NULL,3,4),
(968,18,5,5,2,NULL,NULL,199,2,12,15,180,135.00,NULL,3,NULL),
(969,18,6,5,2,NULL,3,199,0,12,15,180,139.00,NULL,3,NULL),
(970,19,1,5,2,1,NULL,200,0,15,33,178,135.00,'Wide',4,NULL),
(971,19,1,5,2,NULL,NULL,204,4,15,33,178,138.00,NULL,4,4),
(972,19,2,5,2,NULL,NULL,206,2,15,33,178,133.00,NULL,4,NULL),
(973,19,3,5,2,NULL,NULL,210,4,15,33,178,132.60,NULL,4,4),
(974,19,4,5,2,NULL,NULL,211,1,15,33,178,132.50,NULL,4,NULL),
(975,19,5,5,2,NULL,NULL,211,0,33,15,178,130.60,NULL,5,NULL),
(976,19,6,5,2,NULL,NULL,217,6,33,15,178,133.00,NULL,5,6),
(977,20,1,5,2,NULL,4,217,0,15,33,166,140.00,NULL,4,NULL), -- NON STRIKER RUN OUT
(978,20,2,5,2,NULL,NULL,223,6,15,24,166,138.90,NULL,4,6),
(979,20,3,5,2,NULL,NULL,225,2,15,24,166,133.60,NULL,4,NULL),
(980,20,4,5,2,NULL,5,225,0,15,24,166,135.60,NULL,4,NULL),
(981,20,5,5,2,NULL,NULL,226,1,24,20,166,139.80,NULL,7,NULL),
(982,20,6,5,2,NULL,NULL,232,6,20,24,166,130.00,NULL,6,6);



------> Inserting into Match_officials Table:

INSERT INTO match_officials
VALUES
(1,'Abhijeet Bengeri','Vinod Seshan','Jayaraman Madanagopal'),
(2,'Adrian Holdstock', 'Akshay Totre','Rohan Pandit'),
(3,'KN Anantha Padmanabhan', 'Saiyed Khalid','Nitin Menon'),
(4,'Abhijit Bhattacharya', 'Ulhas Gandhe','Virendra Sharma'),
(5,'Vinod Seshan', 'Abhijit Bengeri','Jayaraman Madanagopal');



------> Inserting into Wickets Table:

INSERT INTO wickets
VALUES
(1,'Caught',191,38,NULL,5,NULL),
(2,'Caught',207,38,NULL,63,NULL),
(3,'Caught',9,53,NULL,66,NULL),
(4,'Bowled',197,NULL,NULL,77,NULL),
(5,'Caught',190,38,NULL,94,NULL),
(6,'Bowled',201,NULL,NULL,98,NULL),
(7,'Bowled',193,NULL,NULL,117,NULL),
(8,'Caught',206,38,NULL,123,NUll),
(9,'Caught',37,208,NULL,176,NULL),
(10,'Caught',39,200,NULL,195,NULL),
(11,'Caught',2,190,NULL,218,NULL),
(12,'Caught',89,214,NULL,244,NULL),
(13,'Caught',85,213,NULL,286,NULL),
(14,'Caught',90,214,NULL,320,NULL),
(15,'Caught',84,216,NULL,346,NULL),
(16,'Caught',82,219,NULL,352,NULL),
(17,'Caught',81,216,NULL,353,NULL),
(18,'Caught',214,81,NULL,366,NULL),
(19,'Caught',216,4,NULL,368,NULL),
(20,'Caught',217,4,NULL,383,NULL),
(21,'Caught',10,84,NULL,445,NULL),
(22,'Caught',215,79,NULL,447,NULL),
(23,'Caught',213,81,NULL,484,NULL),
(24,'Caught',53,158,NULL,489,NULL),
(25,'Bowled',61,NULL,NULL,499,NULL),
(26,'Caught',64,158,NULL,513,NULL),
(27,'Stumped',58,NULL,NULL,550,142),
(28,'Caught',60,157,NULL,565,NULL),
(29,'LBW',77,NULL,NULL,567,NULL),
(30,'Bowled',63,NULL,NULL,587,NULL),
(31,'LBW',65,NULL,NULL,598,NULL),
(32,'Caught',71,7,NULL,604,NULL),
(33,'Caught',144,61,NULL,621,NULL),
(34,'Caught',7,64,NULL,659,NULL),
(35,'Caught',158,77,NULL,671,NULL),
(36,'Caught',153,75,NULL,683,NULL),
(37,'Bowled',151,NULL,NULL,698,NULL),
(38,'Run Out',157,NULL,71,725,NULL),
(39,'Caught',172,20,NULL,747,NULL),
(40,'Caught',184,11,NULL,769,NULL),
(41,'Caught',182,20,NULL,792,NULL),
(42,'LBW',176,NULL,NULL,793,NULL),
(43,'Caught',175,20,NULL,823,NULL),
(44,'Caught',1,184,NULL,890,NULL),
(45,'Caught',11,173,NULL,932,NULL),
(46,'Bowled',12,NULL,NULL,969,NULL),
(47,'Run Out',33,NULL,166,977,NULL),
(48,'Bowled',15,NULL,NULL,980,NULL);



------> Insertion in Final_result Table for winner team chasing

WITH score_data AS (
    SELECT 
        SUM(CASE WHEN inning_no = 2 THEN run_scored ELSE 0 END) +
        SUM(CASE WHEN inning_no = 2 THEN extras ELSE 0 END) AS score_of_winner,
        
        SUM(CASE WHEN inning_no = 1 THEN run_scored ELSE 0 END) +
        SUM(CASE WHEN inning_no = 1 THEN extras ELSE 0 END) AS score_of_loser
    FROM per_ball_data
    WHERE of_match = 1
),
wicket_data AS (
    SELECT COUNT(*) AS wickets_lost
    FROM per_ball_data
    WHERE of_match = 1 AND inning_no = 2 AND wicket_no IS NOT NULL
)

INSERT INTO final_result (
  match_id, winner, loser, 
  score_of_winner, score_of_loser, 
  win_run_margin, win_wicket_margin, 
  player_of_the_match
)
SELECT
  1 AS match_id,
  2 AS winner,
  9 AS loser,
  sd.score_of_winner,
  sd.score_of_loser,

  -- won chasing (already known)
  NULL AS win_run_margin,

  -- Wickets remaining = 10 - wickets lost while chasing
  10 - wd.wickets_lost AS win_wicket_margin,

  42 AS player_of_the_match

FROM match_details md
JOIN score_data sd ON TRUE
JOIN wicket_data wd ON TRUE
WHERE md.match_id = 1;

--while chasing


------> Insertion in final_result for winner team defending the target
WITH score_data AS (
    SELECT 
        SUM(CASE WHEN inning_no = 1 THEN run_scored ELSE 0 END) +
        SUM(CASE WHEN inning_no = 1 THEN extras ELSE 0 END) AS score_of_winner,
        
        SUM(CASE WHEN inning_no = 2 THEN run_scored ELSE 0 END) +
        SUM(CASE WHEN inning_no = 2 THEN extras ELSE 0 END) AS score_of_loser
    FROM per_ball_data
    WHERE of_match = 2
),


INSERT INTO final_result (
  match_id, winner, loser, 
  score_of_winner, score_of_loser, 
  win_run_margin, win_wicket_margin, 
  player_of_the_match
)
SELECT
  2 AS match_id,
  4 AS winner,
  10 AS loser,
  sd.score_of_winner,
  sd.score_of_loser,

  -- defending 
  sd.score_of_winner - sd.score_of_loser AS win_run_margin,

  -- Since winner didn't chase, wickets remaining = NULL
  NULL AS win_wicket_margin,

  79 AS player_of_the_match

FROM match_details md
JOIN score_data sd ON TRUE
WHERE md.match_id = 2;


-- for defending



------> Insertion in Partnership Table: 
--> For wicket 1 of any inning of any match

WITH max_id AS (
  SELECT COALESCE(MAX(partnership_id), 0) AS pid FROM partnership
),
partnership_data AS (
  SELECT 
    on_strike,
    off_strike,
    of_match AS match_id,
    total_score AS runs,
    wicket_no AS partnership_no,
    inning_no
  FROM per_ball_data
  WHERE wicket_no = 1 AND of_match = 1 AND inning_no = 2
),
numbered_data AS (
  SELECT 
    ROW_NUMBER() OVER () + max_id.pid AS partnership_id,
    *
  FROM partnership_data, max_id
)

INSERT INTO partnership (
  partnership_id,
  player1,
  player2,
  match_id,
  runs,
  partnership_no,
  inning_no
)
SELECT 
  partnership_id,
  on_strike,
  off_strike,
  match_id,
  runs,
  partnership_no,
  inning_no
FROM numbered_data;


--EXAMPLE CASE OF 1ST MATCH 2ND INNINGS WICKET 1

--> For mid wicket partnership

WITH max_id AS (
  SELECT COALESCE(MAX(partnership_id), 0) AS pid FROM partnership
),
first_wicket_score AS (
  SELECT total_score AS score_at_first_wicket
  FROM per_ball_data
  WHERE of_match = 2 AND inning_no = 1 AND wicket_no = 1
  ORDER BY ball_id
  LIMIT 1
),
wickets AS (
  SELECT 
    wicket_no,
    total_score,
    on_strike,
    off_strike,
    ROW_NUMBER() OVER (ORDER BY ball_id) AS rn
  FROM per_ball_data
  WHERE of_match = 2 AND inning_no = 1 AND wicket_no IS NOT NULL AND wicket_no > 1
),
wicket_with_prev AS (
  SELECT 
    w.wicket_no,
    w.on_strike,
    w.off_strike,
    CASE 
      WHEN w.rn = 1 THEN w.total_score - fws.score_at_first_wicket
      ELSE w.total_score - LAG(w.total_score) OVER (ORDER BY w.rn)
    END AS partnership_runs,
    w.rn
  FROM wickets w
  CROSS JOIN first_wicket_score fws
),
final_data AS (
  SELECT 
    rn + max_id.pid AS partnership_id,
    2 AS match_id,
    1 AS inning_no,
    wicket_no AS partnership_no,
    partnership_runs AS runs,
    on_strike AS player1,
    off_strike AS player2
  FROM wicket_with_prev, max_id
)

INSERT INTO partnership (
  partnership_id,
  match_id,
  inning_no,
  partnership_no,
  runs,
  player1,
  player2
)
SELECT 
  partnership_id,
  match_id,
  inning_no,
  partnership_no,
  runs,
  player1,
  player2
FROM final_data;


--> for final not out partnership if team doesn't get all out

WITH last_wicket AS (
    SELECT MAX(wicket_no) AS last_wicket_no,
           MAX(total_score) AS score_at_last_wicket
    FROM per_ball_data
    WHERE of_match = 1 AND inning_no = 1 AND wicket_no IS NOT NULL
),
final_ball AS (
    SELECT total_score, on_strike, off_strike
    FROM per_ball_data
    WHERE of_match = 1 AND inning_no = 1
    ORDER BY ball_id DESC
    LIMIT 1
),
max_pid AS (
    SELECT COALESCE(MAX(partnership_id), 0) AS max_pid FROM partnership
)
INSERT INTO partnership (
    partnership_id,
    match_id,
    inning_no,
    partnership_no,
    runs,
    player1,
    player2
)
SELECT 
    max_pid.max_pid + 1 AS partnership_id,
    1 AS match_id,
    1 AS inning_no,
    lw.last_wicket_no + 1 AS partnership_no,
    fb.total_score - lw.score_at_last_wicket AS runs,
    fb.on_strike AS player1,
    fb.off_strike AS player2
FROM last_wicket lw, final_ball fb, max_pid
WHERE lw.last_wicket_no < 10;


------> Inserting in Plyer_performance_in a_match Table:


INSERT INTO player_performance_in_a_match (
    match_id,
    player_id,
    runs,
    balls_played,
    wickets_taken,
    balls_bowled,
    runs_conceded,
    fours,
    sixes,
    fours_conceded,
    sixes_conceded
)
SELECT
    p.match_id,
    p.player_id,

    -- Runs scored by batsman
    COALESCE((
        SELECT SUM(run_scored)
        FROM per_ball_data
        WHERE on_strike = p.player_id AND of_match = p.match_id
    ), 0) AS runs,

    -- Balls played by batsman (excluding Wide and Byes)
    COALESCE((
        SELECT COUNT(*)
        FROM per_ball_data
        WHERE on_strike = p.player_id
          AND of_match = p.match_id
          AND (type_of_extra IS NULL OR type_of_extra NOT IN ('Wide', 'Byes'))
    ), 0) AS balls_played,

    -- Wickets taken
    COALESCE((
        SELECT COUNT(*)
        FROM per_ball_data
        WHERE bowled_by = p.player_id
          AND of_match = p.match_id
          AND wicket_no IS NOT NULL
    ), 0) AS wickets_taken,

    -- Balls bowled (excluding Wide and No Ball)
    COALESCE((
        SELECT COUNT(*)
        FROM per_ball_data
        WHERE bowled_by = p.player_id
          AND of_match = p.match_id
          AND (type_of_extra IS NULL OR type_of_extra NOT IN ('Wide', 'No Ball'))
    ), 0) AS balls_bowled,

    -- Runs conceded (excluding Byes and Leg Byes)
    COALESCE((
        SELECT SUM(COALESCE(run_scored, 0) + COALESCE(extras, 0))
        FROM per_ball_data
        WHERE bowled_by = p.player_id
          AND of_match = p.match_id
          AND (type_of_extra IS NULL OR type_of_extra NOT IN ('Byes', 'Leg Byes'))
    ), 0) AS runs_conceded,

    -- Fours scored
    COALESCE((
        SELECT COUNT(*)
        FROM per_ball_data
        WHERE on_strike = p.player_id
          AND of_match = p.match_id
          AND boundary = 4
    ), 0) AS fours,

    -- Sixes scored
    COALESCE((
        SELECT COUNT(*)
        FROM per_ball_data
        WHERE on_strike = p.player_id
          AND of_match = p.match_id
          AND boundary = 6
    ), 0) AS sixes,

    -- Fours conceded by bowler
    COALESCE((
        SELECT COUNT(*)
        FROM per_ball_data
        WHERE bowled_by = p.player_id
          AND of_match = p.match_id
          AND boundary = 4
    ), 0) AS fours_conceded,

    -- Sixes conceded by bowler
    COALESCE((
        SELECT COUNT(*)
        FROM per_ball_data
        WHERE bowled_by = p.player_id
          AND of_match = p.match_id
          AND boundary = 6
    ), 0) AS sixes_conceded

FROM playing_11 p
WHERE p.match_id = 1;



----------> Insertion in points_table

INSERT INTO points_table (
)
VALUES
  (1, 0, 0, 0, 0, 0, 0),
  (2, 0, 0, 0, 0, 0, 0),
  (3, 0, 0, 0, 0, 0, 0),
  (4, 0, 0, 0, 0, 0, 0),
  (5, 0, 0, 0, 0, 0, 0),
  (6, 0, 0, 0, 0, 0, 0),
  (7, 0, 0, 0, 0, 0, 0),
  (8, 0, 0, 0, 0, 0, 0),
  (9, 0, 0, 0, 0, 0, 0),
  (10, 0, 0, 0, 0, 0, 0);

---> Update points table after match

UPDATE points_table pt
SET nrr = ROUND(
    (
        (CAST(tmn.runs_made AS FLOAT) / NULLIF(tmn.balls_faced, 0) * 6.0) -
        (CAST(tmn.runs_conceded AS FLOAT) / NULLIF(tmn.balls_bowled, 0) * 6.0)
    )::numeric,
    2
)
FROM (
    SELECT 
        m1.batting_team AS team_id,
        m1.of_match,
        m1.runs_scored AS runs_made,
        m1.balls_faced AS balls_faced,
        m2.runs_scored AS runs_conceded,
        m2.balls_faced AS balls_bowled
    FROM (
        SELECT 
            pbd.of_match,
            pbd.inning_no,
            pt.team_id AS batting_team,
            SUM(pbd.run_scored + pbd.extras) AS runs_scored,
            COUNT(*) FILTER (WHERE pbd.ball_no <= 6) AS balls_faced
        FROM per_ball_data pbd
        JOIN players pt ON pbd.on_strike = pt.player_id
        GROUP BY pbd.of_match, pbd.inning_no, pt.team_id
    ) m1
    JOIN (
        SELECT 
            pbd.of_match,
            pbd.inning_no,
            pt.team_id AS batting_team,
            SUM(pbd.run_scored + pbd.extras) AS runs_scored,
            COUNT(*) FILTER (WHERE pbd.ball_no <= 6) AS balls_faced
        FROM per_ball_data pbd
        JOIN players pt ON pbd.on_strike = pt.player_id
        GROUP BY pbd.of_match, pbd.inning_no, pt.team_id
    ) m2
    ON m1.of_match = m2.of_match AND m1.inning_no != m2.inning_no
) tmn
WHERE pt.team_id = tmn.team_id;