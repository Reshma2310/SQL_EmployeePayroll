UC1: Creating Database for Payroll
CREATE DATABASE PayRoll_Service;
use PayRoll_Service;

UC2: Creating Employee Payroll table
Create Table Employee_PayRoll (ID INT IDENTITY(1,1) PRIMARY KEY, NAME VARCHAR(150), SALARY FLOAT, START DATE);

UC3: Inserting Data of Employees
INSERT INTO Employee_PayRoll( Name, Salary, Start ) VALUES
( 'Reshma', 6000000.00, '2017-05-12' ),
( 'Vahidha', 4000000.00, '2018-06-01' ),
( 'Basith', 450000.00, '2020-07-16' );

UC4: Retrieve Data from database
SELECT * FROM Employee_PayRoll;

UC5: Retrieve Salary data of particular Employee & Employee list in given Range
SELECT NAME, SALARY FROM employee_payroll WHERE NAME = 'Reshma';
SELECT NAME, SALARY FROM Employee_PayRoll WHERE START BETWEEN CAST('2018-01-01' AS DATE) AND GETDATE();