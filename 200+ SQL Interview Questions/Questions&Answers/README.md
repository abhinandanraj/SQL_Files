# 200+ SQL Interview Questions ( Oracle SQL Developer)
# Part 1
## Tables
### Question 1 
#### What is a DUAL table and why do we need it?
    The DUAL table is a special one-row table present by default in all Oracle database installations.
    
    --> It is suitable for use in selecting a pseudo columns such as SYSDATE or USER.
    --> It can be used to perform calculations.
    --> It can be used as a sequence generator.
    Example:
    1 . select * from dual; 
    2 . select 2*45 from dual;
    3 . select user from dual;
    4 . select sysdate from dual;
    5 . select  Rownum r From dual Connect By Rownum <=10;
---

### Question 2 
#### How many column's and row's are present in the DUAL table? (Or) What is the output of SQL statement?
##### Select count(1) from dual;
    1 Row and 1 Column
    --> A dual table has only one row and one column.
---

### Question 3 
#### Can we insert rows in the DUAL table?
    Yes
    Ex: insert into dual values ('Y');
---

### Question 4 
#### Can we create a table based on a existing table (Or) What is the easiest way to backup a table?
    Yes using the CTAS (Create table AS)
    Ex: ( You should a table.)
    SELECT * FROM SALES
    CREATE TABLE SALES1 AS SELECT * FROM SALES
    SELECT * FROM SALES1 
---

### Question 5
#### Can we drop all the columns from a table?
    No, We get the following error.
    ORA-12983: cannot drop all columns in a table
---

### Question 6
### What are pseudo columns?
    A pseudo column behaves like a table column, but is not actually stored in the table.
    
    You can select from pseudo columns, but you cannot insert, update or delete their values.
    -> SYSDATE
    -> ROWID
    -> ROWNUM
    -> OBJECT_ID
    -> OBJECT_VALUE
    -> OBJECT_VALUE
    -> ORA_ROWSCN
    -> XMLDATA
    -> CURRVAL
    -> NEXTVAL
    -> LEVEL
    -> CONNECT BY ISCYCLE
---

### Question 7
#### What is the difference between count(1), count(*)?
    Nothing, They are the same.
    --> They incur the same amount of work.
    --> they do the same thing.
    --> They take the same amount of resources.
---
## Filters
### Question 1 
#### What is the difference between IN and = operator?
    -> = operator accepts only 1 value.
    -> IN operator can accept more than 1 Value.

    SELECT employee_id, department_id, salary
    FROM employees
    WHERE DEPARTMENT_ID = 90

    SELECT employee_id, department_id, salary
    FROM employees
    WHERE DEPARTMENT_ID IN(100,90,200)

### Question 2
#### How many maximum number of values can a IN operator take?
    999

    SELECT employee_id, department_id, salary
    FROM employees
    WHERE DEPARTMENT_ID IN(100,90,200)

### Question 3
#### Difference between EXIST and IN when using in sub queries?
    The difference between the IN and Exists predicate in subquery is the way in
    which the query gets executed.

    IN
    
    The inner query is executed first and the list of values obtained as its result is used by the outer query. The inner query is executed for only once.

    SELECT employee_id,department_id,salary
    FROM employees
    WHERE DEPARTMENT_ID IN (select department_id from department) 

    EXISTS
    
    The first row from the outer query is selected, then the inner query is executed and, the outer query output uses this result for checking.
    
    This process of inner query execution repeats as many numbers of times as there are outer query rows.

    That is, if there are ten rows that can result from outer query, the inner query is executed that many number of times.

    SELECT *
    FROM customers cs
    WHERE EXISTS (SELECT * 
                  FROM order_details ord
                  WHERE .....)
### Question 4
#### Difference between HAVING and WHERE clause?
    -> WHERE is used to filter out the data before the aggregation takes place.
    -> HAVING is used to filter out the data after the aggregation takes place.

    SELECT department_id, sum(salary) as salary
    FROM employees
    WHERE DEPARTMENT_ID IN (100, 90, 200)
    Group by department_id
    HAVING sum(salary) > 10000

---
## Delete and Truncate
### Question 1 
#### Difference between Delete and Truncate? Which is faster?
    DELETE
    DELETE command is used to selectively remove rows from a table using a WHERE clause.
    If no WHERE condition is specified, all rows will be removed.

    After performing a DELETE operation you need to COMMIT or ROLLBACK the transaction
    to make the change permanent or to undo it.
    
    DELETE triggers on the table are fired if there are any triggers.

    TRUNCATE
    TRUNCATE removes all rows from a table. You can not roll back the data.
    It does not affect any of the table's indexes, triggers, or dependencies.
    Since no UNDO log is maintained and has no dependencies TRUNCATE is faster.

### Question 2 
#### Can we use WHERE condition with truncate?
     NO

### Question 3
#### Can we delete a record from more than one table simultaneously?
     YES
     
     DELETE t1, t2
        FROM t1 INNER JOIN t2
      WHERE t1.id = t2.id
        AND t2.id = t3.id;

### Question 4
#### How to delete duplicate records?
     delete from department d1
     where d1.rowid >
     (
      select min(d2.rowid)from department d2
       where d1.department_id = d2.department_id
         and d1.department_name = d2.department_name
         and d1.branch = d2.branch
      )
     For Example, Please see below image: 
   <img src ="https://github.com/abhinandanraj/SQL_Files/assets/42587988/60932c6c-90a9-4402-97bc-0d605d2868d3.JPG" alt="Radius" width="510" height="160">


    
     
