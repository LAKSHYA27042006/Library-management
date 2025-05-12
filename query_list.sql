use library;
create table books (bid int auto_increment primary key, title varchar(20) not null,author varchar(30) not null, status varchar(30) not null,quantity varchar(10) not null,genre varchar(30) not null);
INSERT INTO books (title, author, status, quantity, genre) 
VALUES 
    ('Book Title 1', 'Author 1', 'Available', '10', 'Genre 1'),
    ('Book Title 2', 'Author 2', 'Unavailable', '5', 'Genre 2'),
    ('Book Title 3', 'Author 3', 'Available', '8', 'Genre 3'),
    ('Book Title 4', 'Author 4', 'Available', '9', 'Genre 4'),
    ('Book Title 5', 'Author 5', 'Available', '6', 'Genre 4'),
    ('Book Title 6', 'Author 6', 'Available', '4', 'Genre 2'),
    ('Book Title 7', 'Author 7', 'Available', '3', 'Genre 1'),
    ('Book Title 8', 'Author 8', 'Available', '2', 'Genre 3'),
    ('Book Title 9', 'Author 9', 'Available', '1', 'Genre 3');
    
CREATE TABLE `library`.`books_issued` (
  `issued_id` INT AUTO_INCREMENT PRIMARY KEY,
  `bid` INT NOT NULL,
  `issued_date` VARCHAR(45) NOT NULL,
  `date_of_return` VARCHAR(45) NOT NULL,
  `customer_name` VARCHAR(45) NOT NULL,
  `Mobile_Number` VARCHAR(45) NOT NULL,
  `late_fee` VARCHAR(45) NOT NULL,
  `book_return_status` VARCHAR(45) NOT NULL);
  
ALTER TABLE `library`.`books_issued`
ADD COLUMN actual_date_of_return VARCHAR(45) NOT NULL;

INSERT INTO `library`.`books_issued` (bid, issued_date, date_of_return, customer_name, Mobile_Number, late_fee, book_return_status, actual_date_of_return)
VALUES
(1, SYSDATE(), DATE_ADD(SYSDATE(), INTERVAL 10 DAY), 'John Doe', '1234567890', '5', 'Returned', '2023-11-10'),
(2, SYSDATE(), DATE_ADD(SYSDATE(), INTERVAL 10 DAY), 'Jane Smith', '9876543210', '8', 'Not Returned', '2023-11-15');

select * books_issuedUPDATE `library`.`books_issued`
SET
`issued_id` = <{issued_id: }>,
`bid` = <{bid: }>,
`issued_date` = <{issued_date: }>,
`date_of_return` = <{date_of_return: }>,booksbooks
`customer_name` = <{customer_name: }>,
`Mobile_Number` = <{Mobile_Number: }>,
`late_fee` = <{late_fee: }>,
`book_return_status` = <{book_return_status: }>,
`actual_date_of_return` = <{actual_date_of_return: }>
WHERE `issued_id` = <{expr}>;
from books;

SELECT * FROM library.books_issued;

CREATE TABLE issueTable (
    bid INT,
    issueto VARCHAR(255),
    studclass VARCHAR(255),
    sect VARCHAR(255),
    date_column DATE
);

CREATE TABLE issuehlogin_tableistory (
    bid INT,
    issuedto VARCHAR(255),
    class VARCHAR(255),
    section VARCHAR(255),
    dateofissue DATE
);

SELECT * FROM library.login_table;


