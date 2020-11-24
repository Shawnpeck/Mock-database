----------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Table structure for Staff 
----------------------------------------------------------------------------------------------------------------------------------------------------------------

CREATE TABLE Staff(
	StaffID AUTOINCREMENT PRIMARY KEY NOT NULL,
	Staff_FirstName CHAR NOT NULL,
	Staff_LastName CHAR NOT NULL,
	Staff_DateOfBirth DATE NOT NULL,
	Staff_State CHAR NOT NULL,
	Staff_City CHAR NOT NULL,
	Staff_PostalCode INTEGER NOT NULL,
	Staff_Address TEXT NOT NULL,
	Staff_PhoneNumber FLOAT NOT NULL,
	Staff_Email CHAR NOT NULL
);

--------------------------------------------------------------------------------
-- Table structure for schedule
--------------------------------------------------------------------------------

CREATE TABLE Schedule(
	ClassID AUTOINCREMENT PRIMARY KEY NOT NULL,
	Sch_NameOfClass CHAR NOT NULL,
	Sch_DayOfTheWeek CHAR NOT NULL,
	Sch_Date DATE NOT NULL,
	Sch_TimeStart TIME NOT NULL,
	Sch_TimeEnd TIME NOT NULL,
	Sch_Instructor_FK INTEGER NOT NULL,
	Sch_Attendance INTEGER NOT NULL
);

--Add foreign key constraint
ALTER TABLE Schedule
ADD FOREIGN KEY (Sch_Instructor_FK) REFERENCES Staff(StaffID);

--------------------------------------------------------------------------------
-- Table structure for payment
-------------------------------------------------------------------------------- 

CREATE TABLE Payment (
	PaymentID AUTOINCREMENT PRIMARY KEY NOT NULL,
	Payment_OrdersID_FK INTEGER NOT NULL,
	Payment_StudentID_FK INTEGER NOT NULL,
	CardNumber INTEGER NOT NULL,
	ExpirationDate  DATE NOT NULL,
	CVV INTEGER NOT NULL,
	CardHoldersFirstName CHAR NOT NULL,
	CardHoldersLastName CHAR NOT NULL,
	Payment_ProductNum_FK INTEGER NOT NULL 
);

--Add foreign key constraignts
ALTER TABLE Payment
ADD FOREIGN KEY (Payment_OrdersID_FK) REFERENCES Orders(OrderID);

ALTER TABLE Payment
ADD FOREIGN KEY (Payment_StudentID_FK) REFERENCES Student(StudentID);

ALTER TABLE Payment
ADD FOREIGN KEY (Payment_ProductNum_FK) REFERENCES Product(ProductID);

--------------------------------------------------------------------------------
-- Table structure for Student
--------------------------------------------------------------------------------

CREATE TABLE Student(
	StudentID AUTOINCREMENT PRIMARY KEY NOT NULL,
	Student_FirstName CHAR NOT NULL,
	Student_LastName CHAR NOT NULL,
	Student_DOB DATE NOT NULL,
	Student_Email CHAR NOT NULL,
	Student_PhoneNumber FLOAT NOT NULL
);

--------------------------------------------------------------------------------
-- Table structure for product
--------------------------------------------------------------------------------

CREATE TABLE Product(
	ProductID AUTOINCREMENT PRIMARY KEY NOT NULL,
	ProductType CHAR NOT NULL,
	NameOfProduct TEXT NOT NULL,
	Price MONEY NOT NULL
);

CREATE TABLE Orders(
	OrderID AUTOINCREMENT PRIMARY KEY NOT NULL,
	Orders_StudentID INTEGER NOT NULL,
	Orders_ProductID INTEGER NOT NULL,
	Orders_TotalPrice MONEY NOT NULL
);

--Add foreign key constraignts
ALTER TABLE Orders
ADD FOREIGN KEY (Orders_StudentID) REFERENCES Student(StudentID);

ALTER TABLE Orders
ADD FOREIGN KEY (Orders_ProductID) REFERENCES Product(ProductID);