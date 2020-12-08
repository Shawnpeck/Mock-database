----------------------------------------------------------------------------------------------------------------------------------------------------------------
--DDL
----------------------------------------------------------------------------------------------------------------------------------------------------------------

----------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Populate for Student table 
----------------------------------------------------------------------------------------------------------------------------------------------------------------

INSERT INTO Student VALUES (1, 'Shawn', 'Peckerman', 7777777777, 'skp@gmail.com', 24);
INSERT INTO Student VALUES (2, 'Steve', 'Polish', 7189340018, 'steve.p@gmail.com', 21);
INSERT INTO Student VALUES (3, 'Marina', 'Jones', 7185652934, 'Marina.j@gmail.com', 18);
INSERT INTO Student VALUES (4, 'Maya', 'Stevens', 6465981358, 'M.stevens@gmail.com', 37);
INSERT INTO Student VALUES (5, 'Lauri', 'Evans', 5648981256, 'Lauri12@hotmail.com', 19);
INSERT INTO Student VALUES (6, 'Lawrence', 'Fischer', 7189453615, 'Lawrence.f@yahoo.com', 13);
INSERT INTO Student VALUES (7, 'Samuel', 'Absolm', 7185649532, 'SammyAbs@gmail.com', 20);

----------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Populate for Payment table
----------------------------------------------------------------------------------------------------------------------------------------------------------------

INSERT INTO Payment VALUES (1, 1, 123456789101, '12/1/23', 123, 'Shawn', 'Peckerman');
INSERT INTO Payment VALUES (2, 1, 123456789101, '12/1/23', 123, 'Shawn', 'Peckerman');
INSERT INTO Payment VALUES (3, 2, 124538174639, '1/1/21', 468, 'Steve', 'Polish');
INSERT INTO Payment VALUES (4, 2, 124538174639, '1/1/21', 468, 'Steve', 'Polish');
INSERT INTO Payment VALUES (5, 3, 523145664654, '5/1/22', 564, 'Marina', 'Jones');
INSERT INTO Payment VALUES (6, 7, 654548564121, '6/1/22', 768, 'Samuel', 'Absolm');
INSERT INTO Payment VALUES (7, 4, 786542421221, '1/1/21', 654, 'Maya', 'Stevens');
INSERT INTO Payment VALUES (8, 6, 354654213547, '6/1/21', 548, 'Lawrence', 'Fischer');
INSERT INTO Payment VALUES (9, 5, 854621325454, '8/1/22', 941, 'Lauri', 'Evans');
INSERT INTO Payment VALUES (10, 6, 354654213547, '6/1/21', 548, 'Lawrence', 'Fischer');
INSERT INTO Payment VALUES (11, 3, 523145664654, '5/1/22', 564, 'Marina', 'Jones');
INSERT INTO Payment VALUES (12, 5, 854621325454, '8/1/22', 941, 'Lauri', 'Evans');
INSERT INTO Payment VALUES (13, 2, 124538174639, '1/1/21', 468, 'Steve', 'Polish');
INSERT INTO Payment VALUES (14, 4, 786542421221, '1/1/21', 654, 'Maya', 'Stevens');
INSERT INTO Payment VALUES (15, 4, 786542421221, '1/1/21', 654, 'Maya', 'Stevens');
INSERT INTO Payment VALUES (16, 7, 654548564121, '6/1/22', 768, 'Samuel', 'Absolm');
INSERT INTO Payment VALUES (17, 5, 854621325454, '8/1/22', 941, 'Lauri', 'Evans');

----------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Populate for Product table
----------------------------------------------------------------------------------------------------------------------------------------------------------------

INSERT INTO Product VALUES (1, 'Session Card', '12 Classes Prepaid', 165.00);
INSERT INTO Product VALUES (2, 'Session Card', '24 Classes Prepaid', 284.00);
INSERT INTO Product VALUES (3, 'Session Card', '4 Classes in 2 Months', 74.00);
INSERT INTO Product VALUES (4, 'Session Card', '4 Classes - One Time Trial Package', 50.00);
INSERT INTO Product VALUES (5, 'Session Card', 'Single Class', 19.00);
INSERT INTO Product VALUES (6, 'Session Card', 'Unlimited Monthly Package', 185.00);
INSERT INTO Product VALUES (7, 'Session Card', '1 Zoom Yoga Class', 8.00);

----------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Populate for Orders table
----------------------------------------------------------------------------------------------------------------------------------------------------------------

INSERT INTO Order VALUES (1, 1, 1, 165.00);
INSERT INTO Order VALUES (2, 2, 6, 185.00);
INSERT INTO Order VALUES (3, 3, 4, 50.00);
INSERT INTO Order VALUES (4, 4, 2, 284.00);
INSERT INTO Order VALUES (5, 5, 3, 74.00);
INSERT INTO Order VALUES (6, 6, 5, 19.00); 
INSERT INTO Order VALUES (7, 7, 6, 185.00);
INSERT INTO Order VALUES (8, 8, 2, 284.00);
INSERT INTO Order VALUES (9, 9, 7, 8.00);
INSERT INTO Order VALUES (10, 10, 6, 185.00);
INSERT INTO Order VALUES (11, 11, 4, 50.00);
INSERT INTO Order VALUES (12, 12, 5, 19.00);
INSERT INTO Order VALUES (13, 13, 7, 8.00);
INSERT INTO Order VALUES (14, 14, 3, 74.00);
INSERT INTO Order VALUES (15, 15, 5, 19.00);
INSERT INTO Order VALUES (16, 16, 2, 284.00);
INSERT INTO Order VALUES (17, 17, 1, 165.00);

----------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Populate for Instructor table
----------------------------------------------------------------------------------------------------------------------------------------------------------------

INSERT INTO Instructor VALUES (1, 'Jane', 'Doe', '1/4/1978', 'Brooklyn', 11224, '425 Bay Street', 7184444444, 'j.doe@gmail.com');
INSERT INTO Instructor VALUES (2, 'Jennifer', 'Smith', '12/6/1964', 'Brooklyn', 11227, '3423 Magnolia Rd.', 9174624468, 'jenny@gmail.com');
INSERT INTO Instructor VALUES (3, 'Andre', 'Balkin', '3/5/1988', 'Manhattan', 16753, '554 42nd Street', 6666666666, 'Andre.b@gmail.com');
INSERT INTO Instructor VALUES (4, 'Steven', 'Polasky', '7/12/1993', 'Queens', 13246, '5594 Rego Park', 4481234567, 'Polasky@gmail.com');

----------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Populate for Class table
----------------------------------------------------------------------------------------------------------------------------------------------------------------

INSERT INTO Class VALUES (1, 'Beginners Yoga', 'Beginner');
INSERT INTO Class VALUES (2, 'Yoga Flow', 'Expert');
INSERT INTO Class VALUES (3, 'Yoga All Levels', 'Beginner');
INSERT INTO Class VALUES (4, 'Tai-Chi/Qui-Gong', 'Intermediate');
INSERT INTO Class VALUES (5, 'Qui-Gong', 'Expert');
INSERT INTO Class VALUES (6, 'Zoom Yoga', 'All Levels');
INSERT INTO Class VALUES (7, 'Beginners Women Only', 'Beginner');
INSERT INTO Class VALUES (8, 'Kids Yoga Age 6-11', 'Beginner');

----------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Populate for Schedule table
----------------------------------------------------------------------------------------------------------------------------------------------------------------

INSERT INTO Schedule VALUES (1, 1, 'Wednesday', '9/23/2020', '5:45 PM', '7:00 PM', 1, 11);
INSERT INTO Schedule VALUES (2, 2, 'Wednesday', '9/23/2020', '8:20 PM', '9:35 PM', 2, 20);
INSERT INTO Schedule VALUES (3, 3, 'Thursday', '9/24/2020', '7:00 PM', '8:15 PM', 3, 18);
INSERT INTO Schedule VALUES (4, 3, 'Thursday', '9/24/2020', '8:20 PM', '9:35 PM', 4, 24);
INSERT INTO Schedule VALUES (5, 3, 'Saturday', '9/26/2020', '11:00 AM', '12:30 PM', 2, 30);
INSERT INTO Schedule VALUES (6, 4, 'Sunday', '9/27/2020', '9:00 AM', '10:30 AM', 1, 28);
INSERT INTO Schedule VALUES (7, 5, 'Sunday', '9/27/2020', '9:30 AM', '10:45 AM', 3, 35);
INSERT INTO Schedule VALUES (8, 6, 'Sunday', '9/27/2020', '12:00 PM', '1:00 PM', 3, 17);
INSERT INTO Schedule VALUES (9, 7, 'Monday', '9/28/2020', '5:45 PM', '6:15 PM', 4, 20);
INSERT INTO Schedule VALUES (10, 6, 'Monday', '9/28/2020', '6:00 PM', '7:00 PM', 4, 22);
INSERT INTO Schedule VALUES (11, 3, 'Monday', '9/28/2020', '7:00 PM', '8:15 PM', 3, 34);
INSERT INTO Schedule VALUES (12, 3, 'Monday', '9/28/2020', '8:20 PM', '9:35 PM', 2, 29);
INSERT INTO Schedule VALUES (13, 8, 'Tuesday', '9/29/2020', '6:00 PM', '7:00 PM', 1, 19);
INSERT INTO Schedule VALUES (14, 3, 'Tuesday', '9/29/2020', '7:00 PM', '8:15 PM', 1, 31);
