Use sql_practice;

select * from orders;

-- display only those category having more than 100 orders; 

select category, count(*) from orders
group by category
having count(*) > 100;


# Case Statement

select * from orders;


10000 < - low range amount
30000 <- Mid range amount
else high amount


;


select order_id , total_amount ,
case
	when total_amount <= 10000 then 'Low Amount'
    when total_amount <= 30000 then 'Mid Amount'
    else 'High'
    end as total_amout_category
from orders;


Here is a **Student Performance Dataset** for practicing the `CASE` statement in MySQL Workbench. It includes different subjects, marks, departments, salaries, and attendance so students can practice multiple types of conditional logic.

## **1. Create database and table**

```
CREATE DATABASE Case_Practice;
USE Case_Practice;

CREATE TABLE Student_Performance (
    Student_ID INT PRIMARY KEY,
    Student_Name VARCHAR(50),
    Department VARCHAR(30),
    Age INT,
    Gender VARCHAR(10),
    Marks INT,
    Attendance INT,
    Fees INT,
    City VARCHAR(30)
);
```

## **2. Insert dataset (50 records)**

```
INSERT INTO Student_Performance VALUES
(1,'Rahul','Data Science',21,'Male',95,96,45000,'Delhi'),
(2,'Priya','Computer Science',22,'Female',78,85,40000,'Noida'),
(3,'Amit','Commerce',20,'Male',45,65,25000,'Delhi'),
(4,'Sneha','Data Science',21,'Female',88,92,45000,'Mumbai'),
(5,'Vikas','Computer Science',23,'Male',32,40,40000,'Pune'),
(6,'Neha','Commerce',22,'Female',67,75,25000,'Noida'),
(7,'Rohit','Data Science',24,'Male',55,58,45000,'Jaipur'),
(8,'Anjali','Computer Science',20,'Female',91,98,40000,'Delhi'),
(9,'Karan','Commerce',21,'Male',28,35,25000,'Mumbai'),
(10,'Pooja','Data Science',22,'Female',72,80,45000,'Pune'),
(11,'Arjun','Computer Science',23,'Male',84,88,40000,'Noida'),
(12,'Meena','Commerce',24,'Female',59,60,25000,'Jaipur'),
(13,'Sahil','Data Science',20,'Male',39,48,45000,'Delhi'),
(14,'Riya','Computer Science',21,'Female',96,95,40000,'Mumbai'),
(15,'Manish','Commerce',22,'Male',76,82,25000,'Pune'),
(16,'Kavita','Data Science',23,'Female',63,70,45000,'Noida'),
(17,'Deepak','Computer Science',24,'Male',49,55,40000,'Delhi'),
(18,'Simran','Commerce',20,'Female',89,94,25000,'Jaipur'),
(19,'Varun','Data Science',21,'Male',18,25,45000,'Mumbai'),
(20,'Isha','Computer Science',22,'Female',69,78,40000,'Pune'),
(21,'Nitin','Commerce',23,'Male',81,90,25000,'Delhi'),
(22,'Tanya','Data Science',24,'Female',74,83,45000,'Noida'),
(23,'Ajay','Computer Science',20,'Male',57,62,40000,'Jaipur'),
(24,'Divya','Commerce',21,'Female',93,97,25000,'Mumbai'),
(25,'Mohit','Data Science',22,'Male',43,50,45000,'Pune'),
(26,'Shreya','Computer Science',23,'Female',87,91,40000,'Delhi'),
(27,'Rakesh','Commerce',24,'Male',35,42,25000,'Noida'),
(28,'Nisha','Data Science',20,'Female',79,86,45000,'Jaipur'),
(29,'Gaurav','Computer Science',21,'Male',62,68,40000,'Mumbai'),
(30,'Komal','Commerce',22,'Female',97,99,25000,'Pune'),
(31,'Abhishek','Data Science',23,'Male',52,57,45000,'Delhi'),
(32,'Payal','Computer Science',24,'Female',71,79,40000,'Noida'),
(33,'Ravi','Commerce',20,'Male',24,30,25000,'Jaipur'),
(34,'Muskan','Data Science',21,'Female',85,89,45000,'Mumbai'),
(35,'Tarun','Computer Science',22,'Male',68,73,40000,'Pune'),
(36,'Aarti','Commerce',23,'Female',41,49,25000,'Delhi'),
(37,'Suresh','Data Science',24,'Male',90,93,45000,'Noida'),
(38,'Ritu','Computer Science',20,'Female',54,61,40000,'Jaipur'),
(39,'Harsh','Commerce',21,'Male',77,84,25000,'Mumbai'),
(40,'Preeti','Data Science',22,'Female',33,38,45000,'Pune'),
(41,'Akash','Computer Science',23,'Male',99,98,40000,'Delhi'),
(42,'Monika','Commerce',24,'Female',64,72,25000,'Noida'),
(43,'Yash','Data Science',20,'Male',47,53,45000,'Jaipur'),
(44,'Sakshi','Computer Science',21,'Female',82,87,40000,'Mumbai'),
(45,'Pankaj','Commerce',22,'Male',58,64,25000,'Pune'),
(46,'Shweta','Data Science',23,'Female',92,96,45000,'Delhi'),
(47,'Ankit','Computer Science',24,'Male',26,32,40000,'Noida'),
(48,'Payal','Commerce',20,'Female',73,81,25000,'Jaipur'),
(49,'Varsha','Data Science',21,'Female',61,69,45000,'Mumbai'),
(50,'Ramesh','Computer Science',22,'Male',86,90,40000,'Pune');
```

## **3. CASE statement practice questions**

These are designed from beginner to advanced level.

### **Level 1 – Basic CASE**

1. Display student name and marks. Use CASE to assign grades:
   - 90 or above = A+
   - 80–89 = A
   - 70–79 = B
   - 60–69 = C
   - 50–59 = D
   - Below 50 = Fail
2. Display student name and use CASE to identify whether the student is an Adult or Minor (Age >= 21).
3. Categorize students into:
   - Male = M
   - Female = F
4. Use CASE to display department names as:
   - Data Science = DS
   - Computer Science = CS
   - Commerce = COM

### **Level 2 – Conditional CASE**

5. Identify students with attendance:
   - 90 or above = Excellent
   - 75–89 = Good
   - 50–74 = Average
   - Below 50 = Poor
6. Classify fees:
   - Fees >= 40000 = High Fees
   - Fees >= 25000 = Medium Fees
   - Otherwise = Low Fees
7. Identify students eligible for an exam. Attendance must be at least 75%.
8. Create a result column:
   - Marks >= 40 = Pass
   - Otherwise = Fail

### **Level 3 – CASE with calculations**

9. Calculate a bonus of 10% of fees for students scoring 90 or above.
10. Calculate a scholarship:
    - Marks >= 90 = 50% of fees
    - Marks >= 80 = 30% of fees
    - Marks >= 70 = 10% of fees
    - Otherwise = 0
11. Create a column showing the revised marks:
    - Marks below 40: add 10 grace marks
    - Marks between 40 and 60: add 5 marks
    - Otherwise: no additional marks

### **Level 4 – Advanced CASE**

12. Use CASE inside `ORDER BY` to display Data Science students first, Computer Science second, and Commerce third.
13. Use CASE with aggregate functions to count how many students belong to each grade category.
14. Use CASE with `GROUP BY` to calculate the number of Pass and Fail students.
15. Find the total scholarship amount for each department using CASE.
16. Use CASE to categorize students into three groups:
    - High Performer: Marks >= 85 AND Attendance >= 85
    - Average Performer: Marks >= 50 AND Attendance >= 60
    - Low Performer: Otherwise

## 