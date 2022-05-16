-- CREATE DATABASE BOOK_SHOP;
-- USE BOOK_SHOP;

/* 
CREATE TABLE books (
		book_id INT NOT NULL AUTO_INCREMENT,
		title VARCHAR(100),
		author_fname VARCHAR(100),
		author_lname VARCHAR(100),
		released_year INT,
		stock_quantity INT,
		pages INT,
		PRIMARY KEY(book_id)
);
*/

/*
INSERT INTO books (title, author_fname, author_lname, released_year, stock_quantity, pages)
VALUES
('The Namesake', 'Jhumpa', 'Lahiri', 2003, 32, 291),
('Norse Mythology', 'Neil', 'Gaiman',2016, 43, 304),
('American Gods', 'Neil', 'Gaiman', 2001, 12, 465),
('Interpreter of Maladies', 'Jhumpa', 'Lahiri', 1996, 97, 198),
('A Hologram for the King: A Novel', 'Dave', 'Eggers', 2012, 154, 352),
('The Circle', 'Dave', 'Eggers', 2013, 26, 504),
('The Amazing Adventures of Kavalier & Clay', 'Michael', 'Chabon', 2000, 68, 634),
('Just Kids', 'Patti', 'Smith', 2010, 55, 304),
('A Heartbreaking Work of Staggering Genius', 'Dave', 'Eggers', 2001, 104, 437),
('Coraline', 'Neil', 'Gaiman', 2003, 100, 208),
('What We Talk About When We Talk About Love: Stories', 'Raymond', 'Carver', 1981, 23, 176),
("Where I'm Calling From: Selected Stories", 'Raymond', 'Carver', 1989, 12, 526),
('White Noise', 'Don', 'DeLillo', 1985, 49, 320),
('Cannery Row', 'John', 'Steinbeck', 1945, 95, 181),
('Oblivion: Stories', 'David', 'Foster Wallace', 2004, 172, 329),
('Consider the Lobster', 'David', 'Foster Wallace', 2005, 92, 343);
*/

-- select * from books;

-- Working with CONCAT()

/* 
SELECT 
	CONCAT(author_fname,' ',author_lname) 
    AS Author_FullName
FROM books;
*/

/*
SELECT 
	author_fname AS 'first name',
    author_lname AS 'last name',
    CONCAT(author_fname,' ',author_lname) AS FullName
FROM books;
*/

/*
SELECT 
	concat_ws(' ',author_fname,author_lname)
    AS fullname
FROM books;
*/

-- Working with SUBSTRING() or SUBSTR()

/*
SELECT SUBSTRING('Hello World',1,4);
SELECT substring('Hello World',7);
SELECT substring('Hello World',-4);

SELECT * FROM books;
SELECT 
	SUBSTR("What We Talk About When We Talk About Love: Stories",1,10);

SELECT 
	SUBSTR(title,1,10) AS 'Short Title'
FROM books;
*/

-- Using SUBSTR() AND CONCAT() EX: I love you.....

/*
SELECT 
	concat
    (
		substr(title,1,10),
        '....'
    ) AS 'Title'
FROM books;
*/

-- SELECT REPLACE('FUCK OFF','FUC','#$%') AS 'NO BAD WORD'; 
-- SELECT REPLACE(title,'e',9) FROM books;

-- Working with REVERSE()
/*
Ex: 'Woof' --> REVERSE('Woof') --> 'foow'
	REVERSE('i am good') --> 'doog ma i'
*/

-- SELECT REVERSE('Hello World');

/*
SELECT 
	REVERSE(title) 
FROM books;
*/

-- Working with char_length()

/*
select char_length('Hello World');
SELECT char_length
	(
		concat_ws
			(
				' ', 
                author_fname, 
                author_lname
			)
	) AS 'Total Length' 
FROM books;
*/

/* Practice*/

/*
SELECT REVERSE(upper('Why my cat look at me with such hatred?'));
SELECT REPLACE(title, ' ', '->') from books;
SELECT author_lname AS forwards, REVERSE(author_lname) AS backwards from books;
SELECT CONCAT(UPPER(author_fname),' ',UPPER(author_lname)) AS 'full name in caps' from books;
*/

/*
select * from books;
select concat(title,' was released in ',released_year) from books;

SELECT title,
       Char_length(title) AS 'character count'
FROM   books; 

SELECT Concat(Substr(title, 1, 10), '...')           AS 'short title',
       Concat_ws(',', author_lname, author_fname)    AS author,
       Concat_ws(' ', stock_quantity, 'in', 'stock') AS quantity
FROM   books; 
*/
