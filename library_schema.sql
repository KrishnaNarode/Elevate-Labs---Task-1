create database LibraryManagement;
use LibraryManagement;

CREATE TABLE Authors (
    author_id INT PRIMARY KEY AUTO_INCREMENT,
    author_name VARCHAR(100) NOT NULL
);

CREATE TABLE Books (
    book_id INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(255) NOT NULL,
    publication_year INT,
    author_id INT,
    FOREIGN KEY (author_id) REFERENCES Authors(author_id)
);

CREATE TABLE Members (
    member_id INT PRIMARY KEY AUTO_INCREMENT,
    member_name VARCHAR(100) NOT NULL,
    phone_number VARCHAR(15) UNIQUE
);


CREATE TABLE Loans (
    loan_id INT PRIMARY KEY AUTO_INCREMENT,
    book_id INT,
    member_id INT,
    loan_date DATE NOT NULL,
    return_date DATE,
    FOREIGN KEY (book_id) REFERENCES Books(book_id),
    FOREIGN KEY (member_id) REFERENCES Members(member_id)
);

INSERT INTO Authors (author_name) VALUES
('Krishna'),
('Atharva'),
('Nilesh'),
('Prasad'),
('Omkar');

select * from Authors;
INSERT INTO Books (title, publication_year, author_id) VALUES
('Harry Potter and the Sorcerers Stone', 1947, 1),
('Harry Potter and the Sorcerers Stone Part 2', 1949, 2),
('Harry Potter and the Sorcerers Stone Part 3', 1955, 3),
('I, Robot', 1950, 4),
('The Shining', 1977, 5),
('Animal Farm', 1945, 2),
('The Hitchhiker''s Guide to the Galaxy', 1979, 1);

select * from Books;

INSERT INTO Members (member_name, phone_number) VALUES
('Krissna', '9067419087'),
('Atharva', '8459561890'),
('Nilesh', '7745632871');

select * from Members;

INSERT INTO Loans (book_id, member_id, loan_date, return_date) VALUES
(1, 1, '2025-09-01', '2025-09-15'),
(3, 2, '2025-09-05', NULL),
(5, 3, '2025-09-07', '2025-09-20');

select * from Loans;