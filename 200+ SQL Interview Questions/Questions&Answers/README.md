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

