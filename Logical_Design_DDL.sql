----------------------------------------------------------------------------------------------------------------------------------------------------------------
--DDL
----------------------------------------------------------------------------------------------------------------------------------------------------------------

----------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Table structure for Student 
----------------------------------------------------------------------------------------------------------------------------------------------------------------

CREATE TABLE Student (
	Student_ID INTEGER NOT NULL PRIMARY KEY,
	S_First_Name CHAR NOT NULL,
	S_Last_Name CHAR NOT NULL,
	S_Phone_Num FLOAT NOT NULL,
	S_Email TEXT NOT NULL,
	Age INTEGER NOT NULL
);


----------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Table structure for Payment 
----------------------------------------------------------------------------------------------------------------------------------------------------------------

CREATE TABLE Payment (
	Payment_ID INTEGER NOT NULL PRIMARY KEY,
	Student_FK INTEGER REFERENCES Student(Student_ID),
	CC_Num INTEGER NOT NULL,
	Exp_Date DATE NOT NULL,
	CVV INTEGER NOT NULL,
	Cardholder_First_Name CHAR NOT NULL,
	Cardholder_Last_Name CHAR NOT NULL
);


----------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Table structure for Product
----------------------------------------------------------------------------------------------------------------------------------------------------------------

CREATE TABLE Product (
	Product_ID INTEGER NOT NULL PRIMARY KEY,
	Prod_Type CHAR NOT NULL,
	Product_Name TEXT NOT NULL,
	Cost MONEY NOT NULL
);



----------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Table structure for Order 
----------------------------------------------------------------------------------------------------------------------------------------------------------------

CREATE TABLE Order (
	Order_ID INTEGER NOT NULL PRIMARY KEY,
	Payment_FK INTEGER REFERENCES Payment(Payment_ID),
	Product_FK INTEGER REFERENCES Product(Product_ID),
	Order_Price MONEY NOT NULL
);


----------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Table structure for Instructor 
----------------------------------------------------------------------------------------------------------------------------------------------------------------

CREATE TABLE Instructor (
	Instructor_ID INTEGER NOT NULL PRIMARY KEY,
	I_First_Name CHAR NOT NULL,
	I_Last_Name CHAR NOT NULL,
	DOB DATE NOT NULL,
	City CHAR NOT NULL,
	Postal_Code INTEGER NOT NULL,
	Address TEXT NOT NULL,
	I_Phone_Num FLOAT NOT NULL,
	I_Email TEXT NOT NULL
);


----------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Table structure for Class 
----------------------------------------------------------------------------------------------------------------------------------------------------------------

CREATE TABLE Class (
	Class_ID INTEGER NOT NULL PRIMARY KEY,
	Class_Name CHAR NOT NULL,
	Level CHAR NOT NULL
);


----------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Table structure for Schedule 
----------------------------------------------------------------------------------------------------------------------------------------------------------------

CREATE TABLE Schedule (
	Schedule_ID INTEGER NOT NULL PRIMARY KEY,
	Class_FK INTEGER REFERENCES Class(Class_ID),
	Day_Of_The_Week CHAR NOT NULL,
	Class_Date DATE NOT NULL,
	Time_Start TIME NOT NULL,
	Time_End TIME NOT NULL,
	Instructor_FK INTEGER REFERENCES Instructor(Instructor_ID),
	Attendance INTEGER NOT NULL
);


