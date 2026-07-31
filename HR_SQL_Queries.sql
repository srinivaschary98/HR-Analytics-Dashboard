SELECT * FROM hr_analytics.employees;

select * from employees;

select count(*) as Totalmployees
from employees;

SELECT
ROUND(
SUM(CASE WHEN Attrition='Yes' THEN 1 ELSE 0 END)
*100.0/COUNT(*),2
) AS AttritionRate
FROM employees;

select *
from employees
where Attrition = 'Yes';

Select Department,
Count(*) as EmployeesLeft
from employees
where Attrition ='Yes'
Group by Department
order By EmployeesLeft Desc;

Select JobRole, Count(*) as EmployesLeft
from employees
where Attrition="Yes"
Group By JobRole
order by EmployesLeft DESC;

Select Attrition,round(Avg(MonthlyIncome),2) As AvgSalary
from employees
Group by Attrition;

SELECT
OverTime,
COUNT(*) AS Employees
FROM employees
WHERE Attrition='Yes'
GROUP BY OverTime;

select round(Avg(Age),2)
from employees;

Select Age,
Count(*) As EmployeesLeft
from employees
where Attrition ="Yes"
Group by Age
order by EmployeesLeft DESC;

select Gender, Count(*) As EmployeesLeft
from employees
where Attrition ="Yes"
Group by Gender
order by EmployeesLeft;

Select Attrition, round(Avg(JobSatisfaction),2)
from employees
Group by Attrition;

Select Attrition, round(Avg(WorkLifeBalance),2)
from employees
group by Attrition;

select EmployeeNumber,
JobRole, MonthlyIncome
from employees
order by MonthlyIncome DESC
Limit 10;

select EmployeeNumber,
JobRole, MonthlyIncome
from employees
order by MonthlyIncome
Limit 10;

Select Department,
round(Avg(MonthlyIncome),2) as Average_Salary
from employees
Group by Department
order by Average_Salary;

Select Department, ROUND(AVG(YearsAtCompany),2) AS AvgExperience
from employees 
Group by Department
order by AvgExperience DESC;

SELECT
JobRole,
ROUND(AVG(MonthlyIncome),2) AS AvgIncome
FROM employees
GROUP BY JobRole
ORDER BY AvgIncome DESC
LIMIT 5;

SELECT COUNT(*)
FROM employees
WHERE OverTime='Yes';

SELECT
MonthlyIncome,
COUNT(*) AS EmployeesLeft
FROM employees
WHERE Attrition='Yes'
GROUP BY MonthlyIncome
ORDER BY EmployeesLeft DESC;

SELECT
YearsAtCompany,
COUNT(*) AS Employees
FROM employees
GROUP BY YearsAtCompany
ORDER BY YearsAtCompany;
