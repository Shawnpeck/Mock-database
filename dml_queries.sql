--------------------------------------------------------------------------------
--DML Queries Batch 1
--------------------------------------------------------------------------------

--Find staff members who are located in brooklyn
SELECT Staff_FirstName FROM Staff WHERE Staff_City = 'Brooklyn';

--Find classes in schedule that had over 20 attendance
SELECT Sch_NameOfClass FROM Schedule WHERE Sch_Attendance > 20;

--Find how many purchases student 1 has
SELECT * FROM Payment WHERE Payment_StudentID_FK = 1;

--Find student with last name Polish
SELECT StudentID FROM Student WHERE Student_LastName LIKE '%Pol%';

--Find product that cost over 100 dollars
SELECT * FROM Product WHERE Price > 100.00;

--Find orders that were purchased by Steve 
SELECT * FROM Orders WHERE Orders_StudentID = 2;


--------------------------------------------------------------------------------
--DML Queries Batch 2
--------------------------------------------------------------------------------

--Find which products are being ordered under $170.00 
SELECT Student.Student_FirstName, Product.NameOfProduct, Orders.Orders_TotalPrice 
FROM Student, Product, Orders
WHERE Orders.Orders_TotalPrice < 170.00 
AND Student.StudentID = Orders.Orders_StudentID 
AND Product.ProductID = Orders.Orders_ProductID;

--Find which classes with which teacher have an attendance over 25
SELECT Staff.Staff_FirstName, Schedule.Sch_NameOfClass, Schedule.Sch_Attendance
FROM Staff, Schedule 
WHERE Schedule.Sch_Attendance > 25 
AND Staff.StaffID = Schedule.Sch_Instructor_FK;

--Find how many times Monthly Unlimited was purchased
SELECT Product.NameOfProduct, Orders.OrderID, Orders.Orders_TotalPrice
FROM Product, Orders
WHERE Product.ProductID = 6 
AND Orders.Orders_ProductID = Product.ProductID;

--Find which days of the week Andre works
SELECT Staff.Staff_FirstName, Schedule.Sch_DayOfTheWeek
FROM Staff, Schedule
WHERE Staff.StaffID = 4 
AND Staff.StaffID = Schedule.Sch_Instructor_FK;

--Find how many times Shawn's card was used to make a purchase
SELECT Student.Student_FirstName, Payment.CardNumber, Product.NameOfProduct
FROM Student, Payment, Product
WHERE Student.StudentID = 1
AND Payment.Payment_StudentID_FK = Student.StudentID
AND Payment.Payment_ProductNum_FK = Product.ProductID;

--Find which products have been purchased by which student
SELECT Payment.PaymentID, Student.Student_FirstName, Student.Student_LastName, Product.NameOfProduct
FROM Student, Product, Payment
WHERE Payment.Payment_StudentID_FK = Student.StudentID
AND Payment.Payment_ProductNum_FK = Product.ProductID
ORDER BY Payment.PaymentID ASC;

--------------------------------------------------------------------------------
--DML Queries Batch 3
--------------------------------------------------------------------------------

--Find the number of classes offered
SELECT COUNT(Sch_NameOfClass) AS ClassesPerWeek
FROM Schedule;

--Find the total price of all orders
SELECT SUM(Orders_TotalPrice) AS TotalPriceOfOrders
FROM Orders;

--Find the Average attendance for classes
SELECT AVG(Sch_Attendance) AS AvgAttendance
FROM Schedule;

--Find the number of registered students in the system
SELECT COUNT(StudentID) AS NumberOfStudentsRegistered
FROM Student;

--Find the number of staff members in the system
SELECT COUNT(StaffID) AS NumOfStaffMembers
FROM Staff;

--Find the number of payments made
SELECT COUNT(PaymentID) AS NumOfPaymentsMade
FROM Payment;

--------------------------------------------------------------------------------
--DML Queries Batch 4
--------------------------------------------------------------------------------

--Find the number of classes taught by each teacher
SELECT S.StaffID, S.Staff_LastName, COUNT(Sc.Sch_Instructor_FK) AS NumClassesTaught
FROM Staff AS S, Schedule AS Sc
WHERE Sc.Sch_Instructor_FK = S.StaffID
GROUP BY S.StaffID, S.Staff_LastName;

--Find the total amount payed by Shawn
SELECT S.StudentID, S.Student_FirstName, S.Student_LastName, SUM(O.Orders_TotalPrice) AS SumPayed
FROM Student AS S, Orders AS O
WHERE O.Orders_StudentID = 1
AND S.StudentID = O.Orders_StudentID
GROUP BY S.StudentID, S.Student_FirstName, S.Student_LastName;

--Find which product was purchased 2 or more times
SELECT p.NameOfProduct, COUNT(o.Orders_ProductID) AS TimesPurchased
FROM Product as p, Orders as o
WHERE p.ProductID = o.Orders_ProductID
GROUP BY p.NameOfProduct
HAVING COUNT(o.Orders_ProductID) >= 2;

--Find the average attendance for Sunday classes
SELECT Sch_DayOfTheWeek, AVG(Sch_Attendance) AS AvgAttendance
FROM Schedule
WHERE Sch_DayOfTheWeek = 'Sunday'
GROUP BY Sch_DayOfTheWeek;

--Find the average/sum attendance for yoga all levels
SELECT Sch_NameOfClass, AVG(Sch_Attendance) AS AvgAttendance, SUM(Sch_Attendance) AS SumAttendance
FROM Schedule
WHERE Sch_NameOfClass = 'Yoga All Levels'
GROUP BY Sch_NameOfClass;

--Find the minimum payments for all students
SELECT s.Student_FirstName, s.Student_LastName, MIN(o.Orders_TotalPrice) AS MinAmountPayed
FROM Student AS s, Orders AS o
WHERE s.StudentID = o.Orders_StudentID
GROUP BY s.Student_FirstName, s.Student_LastName;

--------------------------------------------------------------------------------
--DML Queries Batch 5
--------------------------------------------------------------------------------

--Find how much each student owes for their purchases
SELECT s.Student_FirstName, s.Student_LastName, SUM(o.Orders_TotalPrice) AS TotalAmountOwed
FROM Student AS s, Orders as o
WHERE s.StudentID = o.Orders_StudentID 
GROUP BY s.Student_FirstName, s.Student_LastName;

--Find the number of times 'Jane' teaches
SELECT S.Staff_FirstName, S.Staff_LastName, COUNT(Sc.Sch_Instructor_FK) AS NumClassesTaught
FROM Staff AS S, Schedule AS Sc
WHERE Sc.Sch_Instructor_FK = S.StaffID
AND S.Staff_FirstName = 'Jane'
GROUP BY S.Staff_FirstName, S.Staff_LastName;

--Find the average spent by each student
SELECT s.Student_FirstName, s.Student_LastName, AVG(o.Orders_TotalPrice) AS AverageAmountPurchased
FROM Student AS s, Orders as o
WHERE s.StudentID = o.Orders_StudentID 
GROUP BY s.Student_FirstName, s.Student_LastName;

--Find the average attendance for each staff member
SELECT s.Staff_FirstName, s.Staff_LastName, AVG(sc.Sch_Attendance) AS AvgAttendance
FROM Schedule AS sc, Staff as s
WHERE sc.Sch_Instructor_FK = s.StaffID
GROUP BY s.Staff_FirstName, s.Staff_LastName;

--Find who ordered '12 prepaid classes'
SELECT s.Student_FirstName, s.Student_LastName
FROM Student AS s, Product AS p, Orders AS o
WHERE o.Orders_ProductID = p.ProductID
AND o.Orders_StudentID = s.StudentID
AND p.NameOfProduct = '12 Classes Prepaid';

--Find the number of time each credit card was used to make a payment
SELECT s.Student_FirstName, pa.CardNumber, COUNT(pa.CardNumber) AS NumberOfTimesCardUsed
FROM Student AS s, Payment AS pa, Product AS po
WHERE pa.Payment_StudentID_FK = s.StudentID
AND pa.Payment_ProductNum_FK = po.ProductID
GROUP BY s.Student_FirstName, pa.CardNumber;