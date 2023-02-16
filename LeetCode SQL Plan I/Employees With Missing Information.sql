# Question Link: https://leetcode.com/problems/employees-with-missing-information/?envType=study-plan&id=sql-i

/*
1965. Employees With Missing Information
Easy

Table: Employees

+-------------+---------+
| Column Name | Type    |
+-------------+---------+
| employee_id | int     |
| name        | varchar |
+-------------+---------+
employee_id is the primary key for this table.
Each row of this table indicates the name of the employee whose ID is employee_id.
 

Table: Salaries

+-------------+---------+
| Column Name | Type    |
+-------------+---------+
| employee_id | int     |
| salary      | int     |
+-------------+---------+
employee_id is the primary key for this table.
Each row of this table indicates the salary of the employee whose ID is employee_id.
 

Write an SQL query to report the IDs of all the employees with missing information. The information of an employee is missing if:

The employee's name is missing, or
The employee's salary is missing.
Return the result table ordered by employee_id in ascending order.

The query result format is in the following example.

 

Example 1:

Input: 
Employees table:
+-------------+----------+
| employee_id | name     |
+-------------+----------+
| 2           | Crew     |
| 4           | Haven    |
| 5           | Kristian |
+-------------+----------+
Salaries table:
+-------------+--------+
| employee_id | salary |
+-------------+--------+
| 5           | 76071  |
| 1           | 22517  |
| 4           | 63539  |
+-------------+--------+
Output: 
+-------------+
| employee_id |
+-------------+
| 1           |
| 2           |
+-------------+
Explanation: 
Employees 1, 2, 4, and 5 are working at this company.
The name of employee 1 is missing.
The salary of employee 2 is missing.
*/


# Solution 
SELECT employee_id from Employees WHERE employee_id not in (SELECT employee_id from Salaries )
UNION
SELECT employee_id from Salaries WHERE employee_id not in (SELECT employee_id from Employees)
order by employee_id asc;



# 1: For finding ids of all the employees with missing salary, we need to query for employees whose records are present in employees table but not in  salaries tables.
# 2: For finding ids of all the employees with missing name, we need to query for employees whose records are present in Salaries table but not in Employees tables. 
# For finding employee_id of all the employees with missing information we need to take Union (OR condition ) of Query 1 and Query 2 and then order it in ascending order.
