# 📚 Library Management System using MySQL

## 📌 Project Overview

This project is a simple **Library Management System** built using MySQL. It helps manage books, members, and issued books using relational database concepts.

---

## 🛠️ Technologies Used

* MySQL
* SQL
* MySQL Workbench
* VS Code
* GitHub

---

## 📊 Database Structure

### 1. Books Table

Stores information about books available in the library.

* book_id (Primary Key)
* title
* author
* quantity

### 2. Members Table

Stores library member details.

* member_id (Primary Key)
* member_name
* email

### 3. Issued_Books Table

Tracks which member borrowed which book.

* issue_id (Primary Key)
* book_id (Foreign Key)
* member_id (Foreign Key)
* issue_date

---

## ✨ Features

* Add and manage books
* Add and manage members
* Track issued books
* Perform SQL queries for reports
* Use JOINs to connect tables

---

## 📈 SQL Concepts Used

* CREATE, INSERT, SELECT
* WHERE, ORDER BY
* JOIN operations
* Aggregate functions (COUNT, SUM, AVG, MAX, MIN)
* GROUP BY and HAVING
* Subqueries

---

## 🚀 How to Run the Project

1. Open MySQL Workbench
2. Run `schema.sql` (create database and tables)
3. Run `sample_data.sql` (insert data)
4. Run `queries.sql` (execute queries)

---

## 📷 Sample Queries

```sql
SELECT * FROM Books;

SELECT m.member_name, b.title
FROM Members m
JOIN Issued_Books i ON m.member_id = i.member_id
JOIN Books b ON b.book_id = i.book_id;
```

---

## 👨‍💻 Author

Your Name: Nagesh (replace if needed)

---

## ⭐ Outcome

This project helped in understanding:

* Relational database design
* SQL query writing
* Data analysis using MySQL
* Real-world library system workflow
