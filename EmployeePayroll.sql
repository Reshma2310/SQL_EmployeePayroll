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

UC8: Extend table by adding phone, address & department
ALTER TABLE Employee_Payroll ADD Phone varchar(10);
UPDATE Employee_Payroll SET phone='4444567893' WHERE id=1;
UPDATE Employee_Payroll SET phone='6444567893' WHERE id=2;
UPDATE Employee_Payroll SET phone='3334567893' WHERE id=7;
UPDATE Employee_Payroll SET phone='3774567893' WHERE id=8;

ALTER TABLE Employee_Payroll ADD Address varchar(200) NOT NULL default 'Kurnool'
ALTER TABLE Employee_Payroll ADD Department varchar(100);
UPDATE Employee_Payroll SET Department='Software' WHERE Name='Reshma';
UPDATE Employee_Payroll SET Department='Managment' WHERE ID=7 or ID =8;
UPDATE Employee_Payroll SET Department='Finance' WHERE Name='Vahidha';

UC9: Extend table by adding Basic, Net & Taxable Pay, Deductions & Income tax
ALTER TABLE Employee_Payroll ADD BasicPay Float NOT NULL DEFAULT(0), Deductions FLOAT NOT NULL DEFAULT(0),
TaxablePay FLOAT NOT NULL DEFAULT(0), NetPay FLOAT NOT NULL DEFAULT(0), IncomeTax Float NOT NULL DEFAULT(0)
UPDATE Employee_Payroll SET BasicPay = 90000, Deductions = 400, TaxablePay = 280, NetPay = 89000, IncomeTax=320 WHERE ID = 1;
UPDATE Employee_Payroll SET BasicPay = 70000, Deductions = 200, TaxablePay = 280, NetPay = 69300, IncomeTax=220 WHERE ID = 2;
UPDATE Employee_Payroll SET BasicPay = 80000, Deductions = 300, TaxablePay = 280, NetPay = 79200, IncomeTax=220 WHERE ID = 7;
UPDATE Employee_Payroll SET BasicPay = 75000, Deductions = 250, TaxablePay = 280, NetPay = 74250, IncomeTax=220 WHERE ID = 8;

UC10: 
INSERT INTO Employee_Payroll VALUES('Terissa', 40000000,'2021-06-01','Female',2666147305,'Hyd','Sales&Marketing',35000,200,280,34320,200)
UPDATE Employee_Payroll SET NAME = 'Terissa' WHERE ID = 8;
SELECT * FROM Employee_PayRoll;
