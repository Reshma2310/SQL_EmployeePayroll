UC1: Creating Database for Payroll
CREATE DATABASE PayRoll_Service;
use PayRoll_Service;

UC2: Creating Employee Payroll table
Create Table Employee_PayRoll (ID INT, Name VARCHAR(150), Salary FLOAT, Start DATE);

UC3: Inserting Data of Employees
INSERT INTO Employee_PayRoll( Name, Salary, Start ) VALUES
( 'Reshma', 6000000.00, '2017-05-12' ),
( 'Vahidha', 4000000.00, '2018-06-01' ),
( 'Basith', 4500000.00, '2020-07-16' );

UC4: Retrieve Data from database
SELECT * FROM Employee_PayRoll;

UC5: Retrieve Salary data of particular Employee & Employee list in given Range
SELECT Name, Salary FROM employee_payroll WHERE Name = 'Reshma';
SELECT Name, Salary FROM Employee_PayRoll WHERE Start BETWEEN CAST('2018-01-01' AS DATE) AND GETDATE();

UC6: Add Gender to Employee Payroll Table
ALTER TABLE Employee_PayRoll ADD GENDER VARCHAR(150);
UPDATE Employee_Payroll set GENDER='Female' where Name = 'Reshma' or Name = 'Vahidha';
UPDATE Employee_Payroll set GENDER='Male' where Name = 'Basith';
SELECT ID,Name,Gender,Salary,Start FROM Employee_Payroll;

UC7: Find Sum, Avg, Min, Max & No of Male & Female Employees
SELECT (Sum(Salary)) TotalSum FROM Employee_Payroll;
SELECT (Avg(Salary)) Average FROM Employee_Payroll;
SELECT (Min(Salary)) MinSalary FROM Employee_Payroll;
SELECT (Max(Salary)) MaxSalary FROM Employee_Payroll;
SELECT COUNT(CASE WHEN UPPER(Gender) = 'MALE' THEN 1 END) Male,
COUNT(CASE WHEN UPPER(Gender) = 'FEMALE' THEN 1 END) Female, COUNT(ID) AS 'Total Employee' FROM Employee_Payroll;


