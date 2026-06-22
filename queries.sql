CREATE DATABASE library_db;
CREATE TABLE Books (
    book_id INT PRIMARY KEY,
    title VARCHAR(100),
    author VARCHAR(100),
    quantity INT
);
SHOW TABLES;
INSERT INTO Books VALUES
(1, 'Python Basics', 'John Smith', 10),
(2, 'MySQL Guide', 'David Lee', 5);
SELECT * FROM Books;
CREATE TABLE Members (
    member_id INT PRIMARY KEY,
    member_name VARCHAR(100),
    email VARCHAR(100)
);
CREATE TABLE Issued_Books (
    issue_id INT PRIMARY KEY,
    book_id INT,
    member_id INT,
    issue_date DATE,
    FOREIGN KEY (book_id) REFERENCES Books(book_id),
    FOREIGN KEY (member_id) REFERENCES Members(member_id)
);
SHOW TABLES;
INSERT INTO Books VALUES
(3,'Data Structures','Robert',8),
(4,'Java Programming','James',7),
(5,'Machine Learning','Andrew',4);
INSERT INTO Members VALUES
(101,'Nikhitha','nikhitha@gmail.com'),
(102,'Rahul','rahul@gmail.com'),
(103,'Priya','priya@gmail.com');
INSERT INTO Issued_Books VALUES
(1,1,101,'2026-06-01'),
(2,3,102,'2026-06-05'),
(3,2,103,'2026-06-10');
show tables;
select*from books;
select*from members;
select*from issued_books;
select m.members_name,b.title from members m join issued_books i on m.member_id=i.member_id join books b on b.book_id=i.book_id=i.book_id;
select count(*) AS Total_books from books;
SELECT * FROM Books
WHERE quantity > 5;
SELECT * FROM Books
ORDER BY quantity DESC;
SELECT AVG(quantity) AS Average_Quantity
FROM Books;
SELECT MAX(quantity) AS Highest_Quantity
FROM Books;
SELECT SUM(quantity) AS Total_Quantity
FROM Books;
SELECT m.member_name, b.title
FROM Members m
JOIN Issued_Books i
ON m.member_id = i.member_id
JOIN Books b
ON b.book_id = i.book_id;
SELECT m.member_name,
       b.title,
       i.issue_date
FROM Members m
JOIN Issued_Books i
ON m.member_id = i.member_id
JOIN Books b
ON b.book_id = i.book_id;
select*from books;
select*from members;
select*from issued_books;
select member_id,count(*) As books_issued from issued_books group by member_id having count(*)>0;
select*from books where quantity=(select MAX(quantity) from books);
select m .member_name from members m join issued_books i on m.member_id =i.member_id join books b  on b.book_id=i.book_id where b.title='Python Basics';use

SELECT m.member_name
FROM Members m
JOIN Issued_Books i
ON m.member_id = i.member_id
JOIN Books b
ON b.book_id = i.book_id
WHERE b.title = 'Python Basics';
SELECT m.member_name, b.title
FROM Members m
JOIN Issued_Books i ON m.member_id = i.member_id
JOIN Books b ON b.book_id = i.book_id;

