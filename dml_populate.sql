----------------------------------------------------------------------------------------------------------------------------------------------------------------
-- DML for Staff
----------------------------------------------------------------------------------------------------------------------------------------------------------------
INSERT INTO Staff VALUES (1, 'Jane', 'Doe', '1/4/1978', 'NY', 'Brooklyn', 11224, '425 Bay Street', 7184444444, 'j.doe@gmail.com');
INSERT INTO Staff VALUES (2, 'Jennifer', 'Smith', '12/6/1964', 'NY', 'Brooklyn', 11227, '3423 Magnolia Rd.', 9174624468, 'jenny@gmail.com');
INSERT INTO Staff VALUES (3, 'Andre', 'Balkin', '3/5/1988', 'NY', 'Manhattan', 16753, '554 42nd Street', 6666666666, 'Andre.b@gmail.com');
INSERT INTO Staff VALUES (4, 'Steven', 'Polasky', '7/12/1993', 'NY', 'Queens', 13246, '5594 Rego Park', 4481234567, 'Polasky@gmail.com');

----------------------------------------------------------------------------------------------------------------------------------------------------------------
-- DML for Schedule
----------------------------------------------------------------------------------------------------------------------------------------------------------------
INSERT INTO Schedule VALUES (1, 'Beginners Yoga', 'Wednesday', '9/23/2020', '5:45 PM', '7:00 PM', 1, 11);
INSERT INTO Schedule VALUES (2, 'Yoga Flow', 'Wednesday', '9/23/2020', '8:20 PM', '9:35 PM', 2, 20);
INSERT INTO Schedule VALUES (3, 'Yoga All Levels', 'Thursday', '9/24/2020', '7:00 PM', '8:15 PM', 3, 18);
INSERT INTO Schedule VALUES (4, 'Yoga All Levels', 'Thursday', '9/24/2020', '8:20 PM', '9:35 PM', 4, 24);
INSERT INTO Schedule VALUES (5, 'Yoga All Levels', 'Saturday', '9/26/2020', '11:00 AM', '12:30 PM', 2, 30);
INSERT INTO Schedule VALUES (6, 'Tai-Chi/Qui-Gong', 'Sunday', '9/27/2020', '9:00 AM', '10:30 AM', 1, 28);
INSERT INTO Schedule VALUES (7, 'Qi-Gong', 'Sunday', '9/27/2020', '9:30 AM', '10:45 AM', 3, 35);
INSERT INTO Schedule VALUES (8, 'Zoom Yoga', 'Sunday', '9/27/2020', '12:00 PM', '1:00 PM', 3, 17);
INSERT INTO Schedule VALUES (9, 'Beginners Women Only', 'Monday', '9/28/2020', '5:45 PM', '6:15 PM', 4, 20);
INSERT INTO Schedule VALUES (10, 'Zoom Yoga', 'Monday', '9/28/2020', '6:00 PM', '7:00 PM', 4, 22);
INSERT INTO Schedule VALUES (11, 'Yoga All Levels', 'Monday', '9/28/2020', '7:00 PM', '8:15 PM', 3, 34);
INSERT INTO Schedule VALUES (12, 'Yoga All Levels', 'Monday', '9/28/2020', '8:20 PM', '9:35 PM', 2, 29);
INSERT INTO Schedule VALUES (13, 'Kids Yoga Age 6-11', 'Tuesday', '9/29/2020', '6:00 PM', '7:00 PM', 1, 19);
INSERT INTO Schedule VALUES (14, 'Yoga All Levels', 'Tuesday', '9/29/2020', '7:00 PM', '8:15 PM', 1, 31);

----------------------------------------------------------------------------------------------------------------------------------------------------------------
-- DML for Payment
----------------------------------------------------------------------------------------------------------------------------------------------------------------
INSERT INTO Payment VALUES (1, 1, 1, 123456789101, '12/1/23', 123, 'Shawn', 'Peckerman', 1);
INSERT INTO Payment VALUES (2, 2, 1, 123456789101, '12/1/23', 123, 'Shawn', 'Peckerman', 6);
INSERT INTO Payment VALUES (3, 3, 2, 124538174639, '1/1/21', 468, 'Steve', 'Polish', 4);
INSERT INTO Payment VALUES (4, 4, 2, 124538174639, '1/1/21', 468, 'Steve', 'Polish', 2);
INSERT INTO Payment VALUES (5, 5, 3, 523145664654, '5/1/22', 564, 'Marina', 'Jones', 3);
INSERT INTO Payment VALUES (6, 6, 7, 654548564121, '6/1/22', 768, 'Samuel', 'Absolm', 5);
INSERT INTO Payment VALUES (7, 7, 4, 786542421221, '1/1/21', 654, 'Maya', 'Stevens', 6);
INSERT INTO Payment VALUES (8, 8, 6, 354654213547, '6/1/21', 548, 'Lawrence', 'Fischer', 2);
INSERT INTO Payment VALUES (9, 9, 5, 854621325454, '8/1/22', 941, 'Lauri', 'Evans', 7);
INSERT INTO Payment VALUES (10, 10, 6, 354654213547, '6/1/21', 548, 'Lawrence', 'Fischer', 6);
INSERT INTO Payment VALUES (11, 11, 3, 523145664654, '5/1/22', 564, 'Marina', 'Jones', 4);
INSERT INTO Payment VALUES (12, 12, 5, 854621325454, '8/1/22', 941, 'Lauri', 'Evans', 5);
INSERT INTO Payment VALUES (13, 13, 2, 124538174639, '1/1/21', 468, 'Steve', 'Polish', 7);
INSERT INTO Payment VALUES (14, 14, 4, 786542421221, '1/1/21', 654, 'Maya', 'Stevens', 3);
INSERT INTO Payment VALUES (15, 15, 4, 786542421221, '1/1/21', 654, 'Maya', 'Stevens', 5);
INSERT INTO Payment VALUES (16, 16, 7, 654548564121, '6/1/22', 768, 'Samuel', 'Absolm', 2);
INSERT INTO Payment VALUES (17, 17, 5, 854621325454, '8/1/22', 941, 'Lauri', 'Evans', 1);

----------------------------------------------------------------------------------------------------------------------------------------------------------------
-- DML for Student
----------------------------------------------------------------------------------------------------------------------------------------------------------------
INSERT INTO Student VALUES (1, 'Shawn', 'Peckerman', '1/1/1994', 'skp@gmail.com', 7777777777);
INSERT INTO Student VALUES (2, 'Steve', 'Polish', '4/7/1996', 'steve.p@gmail.com', 7189340018);
INSERT INTO Student VALUES (3, 'Marina', 'Jones', '4/19/1986', 'Marina.j@gmail.com', 7185652934);
INSERT INTO Student VALUES (4, 'Maya', 'Stevens', '8/16/1976', 'M.stevens@gmail.com', 6465981358);
INSERT INTO Student VALUES (5, 'Lauri', 'Evans', '5/12/1999', 'Lauri12@hotmail.com', 5648981256);
INSERT INTO Student VALUES (6, 'Lawrence', 'Fischer', '6/15/2001', 'Lawrence.f@yahoo.com', 7189453615);
INSERT INTO Student VALUES (7, 'Samuel', 'Absolm', '12/15/1996', 'SammyAbs@gmail.com', 7185649532);


----------------------------------------------------------------------------------------------------------------------------------------------------------------
-- DML for Product
----------------------------------------------------------------------------------------------------------------------------------------------------------------
INSERT INTO Product VALUES (1, 'Session Card', '12 Classes Prepaid', 165.00);
INSERT INTO Product VALUES (2, 'Session Card', '24 Classes Prepaid', 284.00);
INSERT INTO Product VALUES (3, 'Session Card', '4 Classes in 2 Months', 74.00);
INSERT INTO Product VALUES (4, 'Session Card', '4 Classes - One Time Trial Package', 50.00);
INSERT INTO Product VALUES (5, 'Session Card', 'Single Class', 19.00);
INSERT INTO Product VALUES (6, 'Session Card', 'Unlimited Monthly Package', 185.00);
INSERT INTO Product VALUES (7, 'Session Card', '1 Zoom Yoga Class', 8.00);

----------------------------------------------------------------------------------------------------------------------------------------------------------------
-- DML for Orders
----------------------------------------------------------------------------------------------------------------------------------------------------------------
INSERT INTO Orders VALUES (1, 1, 1, 165.00);
INSERT INTO Orders VALUES (2, 1, 6, 185.00);
INSERT INTO Orders VALUES (3, 2, 4, 50.00);
INSERT INTO Orders VALUES (4, 2, 2, 284.00);
INSERT INTO Orders VALUES (5, 3, 3, 74.00);
INSERT INTO Orders VALUES (6, 7, 5, 19.00);
INSERT INTO Orders VALUES (7, 4, 6, 185.00);
INSERT INTO Orders VALUES (8, 6, 2, 284.00);
INSERT INTO Orders VALUES (9, 5, 7, 8.00);
INSERT INTO Orders VALUES (10, 6, 6, 185.00);
INSERT INTO Orders VALUES (11, 3, 4, 50.00);
INSERT INTO Orders VALUES (12, 5, 5, 19.00);
INSERT INTO Orders VALUES (13, 2, 7, 8.00);
INSERT INTO Orders VALUES (14, 4, 3, 74.00);
INSERT INTO Orders VALUES (15, 4, 5, 19.00);
INSERT INTO Orders VALUES (16, 7, 2, 284.00);
INSERT INTO Orders VALUES (17, 5, 1, 165.00);