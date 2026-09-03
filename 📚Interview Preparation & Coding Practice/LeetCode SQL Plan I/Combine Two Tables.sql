# Question Link: https://leetcode.com/problems/combine-two-tables/description/

/*
175. Combine Two Tables
Easy

Table: Person

+-------------+---------+
| Column Name | Type    |
+-------------+---------+
| personId    | int     |
| lastName    | varchar |
| firstName   | varchar |
+-------------+---------+
personId is the primary key column for this table.
This table contains information about the ID of some persons and their first and last names.
 

Table: Address

+-------------+---------+
| Column Name | Type    |
+-------------+---------+
| addressId   | int     |
| personId    | int     |
| city        | varchar |
| state       | varchar |
+-------------+---------+
addressId is the primary key column for this table.
Each row of this table contains information about the city and state of one person with ID = PersonId.
 

Write an SQL query to report the first name, last name, city, and state of each person in the Person table. If the address of a personId is not present in the Address table, report null instead.

Return the result table in any order.

The query result format is in the following example.

 

Example 1:

Input: 
Person table:
+----------+----------+-----------+
| personId | lastName | firstName |
+----------+----------+-----------+
| 1        | Wang     | Allen     |
| 2        | Alice    | Bob       |
+----------+----------+-----------+
Address table:
+-----------+----------+---------------+------------+
| addressId | personId | city          | state      |
+-----------+----------+---------------+------------+
| 1         | 2        | New York City | New York   |
| 2         | 3        | Leetcode      | California |
+-----------+----------+---------------+------------+
Output: 
+-----------+----------+---------------+----------+
| firstName | lastName | city          | state    |
+-----------+----------+---------------+----------+
| Allen     | Wang     | Null          | Null     |
| Bob       | Alice    | New York City | New York |
+-----------+----------+---------------+----------+
Explanation: 
There is no address in the address table for the personId = 1 so we return null in their city and state.
addressId = 1 contains information about the address of personId = 2.
*/

# Solution

SELECT firstName,lastName,city,state FROM Person t1 LEFT JOIN Address t2 on t1.personId = t2.personId;

/*
What is a Left Join?
Suppose you have two tables – table1 and table2. A left join keyword will return all the records of table1 and those records that matched from table2. 
If the records did not match from the right side, then NULL is returned as value for those records. 
In other words, the left join includes the left table (table1) and the common records between table1 and table2. 
It is important to note that some databases refer to the LEFT JOIN as LEFT OUTER JOIN.

Syntax of MySQL LEFT JOIN:

SELECT expression FROM table1 [t1] 
LEFT JOIN table2 [t2] 
ON table1.column_name = table2.column_name;

Here ‘t1’ and ‘t2’ are optional aliases that you can have for the table names.
The columns mentioned after the ON keyword are the related common columns using which the left join is to be performed.
*/