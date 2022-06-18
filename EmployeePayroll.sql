UC1: Creating Database for Payroll
CREATE DATABASE PayRoll_Service;
use PayRoll_Service;

UC2: Creating Employee Payroll table
Create Table Employee_PayRoll (ID INT IDENTITY(1,1) PRIMARY KEY, NAME VARCHAR(150), SALARY FLOAT, START DATE)