create database LMS;
use LMS;
-- Create the books table
CREATE TABLE books (
    book_id INT AUTO_INCREMENT PRIMARY KEY,
    book_title VARCHAR(255) NOT NULL,
    book_author VARCHAR(255) NOT NULL
);

-- Create the users table
CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nameofuser VARCHAR(255) NOT NULL,
    designation VARCHAR(100) NOT NULL
);

-- Create the returntable
CREATE TABLE returntable (
    return_id INT AUTO_INCREMENT PRIMARY KEY,
    book_id INT NOT NULL,
    book_title VARCHAR(255) NOT NULL,
    book_author VARCHAR(255) NOT NULL,
    borrower_name VARCHAR(255) NOT NULL,
    issue_date DATE NOT NULL,
    return_date DATE NOT NULL,
    FOREIGN KEY (book_id) REFERENCES books(book_id)
);

-- Create the issuetable
CREATE TABLE issuetable (
    issue_id INT AUTO_INCREMENT PRIMARY KEY,
    book_id INT NOT NULL,
    book_title VARCHAR(255) NOT NULL,
    borrower_name VARCHAR(255) NOT NULL,
    issue_date DATE NOT NULL,
    returned_date DATE,
    FOREIGN KEY (book_id) REFERENCES books(book_id)
);

-- Create the finetable
CREATE TABLE finetable (
    fine_id INT AUTO_INCREMENT PRIMARY KEY,
    book_title VARCHAR(255) NOT NULL,
    book_author VARCHAR(255) NOT NULL,
    borrowed_date DATE NOT NULL,
    delay_days INT NOT NULL,
    fine_amount DECIMAL(10, 2) NOT NULL
);

-- Showcase the data
SELECT * FROM books;
SELECT * FROM users;
SELECT * FROM returntable;
SELECT * FROM issuetable;
SELECT * FROM finetable;
-- Insert data into books table
INSERT INTO books (book_title, book_author) VALUES
('The Great Gatsby', 'F. Scott Fitzgerald'),
('To Kill a Mockingbird', 'Harper Lee'),
('1984', 'George Orwell')
('1984', 'George Orwell'),('The Snake Girl', 'Milo'),
('The Man That Cried Wolf','Berry Berry');

-- Insert data into users table
INSERT INTO users (nameofuser, designation) VALUES
('Alice Wanyoike', 'Student'),
('Bob Wee', 'Teacher'),
('Charlie Brown', 'Staff'),
('Stacey Odul', 'Student');


-- Insert data into returntable
INSERT INTO returntable (book_id, book_title, book_author, borrower_name, issue_date, return_date) VALUES
(1, 'The Great Gatsby', 'F. Scott Fitzgerald', 'Alice Wanyoike', '2025-01-01', '2023-06-06'),
(2, 'To Kill a Mockingbird', 'Harper Lee', 'Charlie Brown', '2025-05-05', '2023-06-12');

-- Insert data into issuetable
INSERT INTO issuetable (book_id, book_title, borrower_name, issue_date, returned_date) VALUES
(3, '1984', 'Charlie Brown', '2025-05-07', NULL);

-- Insert data into finetable
INSERT INTO finetable (book_title, book_author, borrowed_date, delay_days, fine_amount) VALUES
('The Great Gatsby', 'F. Scott Fitzgerald', '2025-05-01', 5, 25.00),
('To Kill a Mockingbird', 'Harper Lee', '2025-05-05', 3, 15.00);