# Question Link: https://leetcode.com/problems/fix-names-in-a-table/description/?envType=study-plan&id=sql-i

/*
1667. Fix Names in a Table
Easy

Table: Users

+----------------+---------+
| Column Name    | Type    |
+----------------+---------+
| user_id        | int     |
| name           | varchar |
+----------------+---------+
user_id is the primary key for this table.
This table contains the ID and the name of the user. The name consists of only lowercase and uppercase characters.
 

Write an SQL query to fix the names so that only the first character is uppercase and the rest are lowercase.

Return the result table ordered by user_id.

The query result format is in the following example.

 

Example 1:

Input: 
Users table:
+---------+-------+
| user_id | name  |
+---------+-------+
| 1       | aLice |
| 2       | bOB   |
+---------+-------+
Output: 
+---------+-------+
| user_id | name  |
+---------+-------+
| 1       | Alice |
| 2       | Bob   |
+---------+-------+
*/

# Solution

SELECT user_id, 
CONCAT(UPPER(SUBSTR(name, 1, 1)), LOWER(SUBSTR(name, 2))) AS name 
FROM Users 
ORDER BY user_id;

# The CONCAT(string_1, string_2, ... string_n) function joins all the string.
# The UPPER() function converts a string to upper-case.
# The LOWER() function converts a string to lower-case.
# The SUBSTR(stirng, position, length) function return substring of specified length from specified position.