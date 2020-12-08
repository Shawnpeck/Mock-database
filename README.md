# Mock-database
-	Using SQL and Microsoft Access, created a mock database for a yoga studio
-	Created and used a entity-relational schema, relational schema to create blueprint of database
-	Data structure contained tables for: students, payments made, products offered, orders placed, staff members, classes offered, and class schedule 
-	Used foreign key constraints to connect tables and inserted values to test database functionality with queries


Relational Schema:
  Student (Student_ID, S_First_Name, S_Last_Name, S_Phone_Num, S_Email, Age)
  Payment (Payment_ID, Student_FK, Cardholder_First_Name, Cardholder_Last_Name, CC_Num, Exp_Date, CVV)
  Product (Product_ID, Product_Name, Prod_Description, Cost)
  Order (Order_ID, Payment_FK, Product_FK, Quantity, Order_Price)
  Instructor (Instructor_ID, I_First_Name, I_Last_Name, DOB, I_Email, I_Phone_Num, Street, City, Postal_Code)
  Class (Class_ID, Class_Name, Level, Class_Description)
  Schedule (Schedule_ID, Instructor_FK, Class_FK, Day_Of_The_Week, Class_Date, Time_Start, Time_End, Attendance) 
