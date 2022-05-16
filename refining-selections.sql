/*
INSERT INTO books
    (title, author_fname, author_lname, released_year, stock_quantity, pages)
    VALUES ('10% Happier', 'Dan', 'Harris', 2014, 29, 256), 
           ('fake_book', 'Freida', 'Harris', 2001, 287, 428),
           ('Lincoln In The Bardo', 'George', 'Saunders', 2017, 1000, 367);
*/

-- Refining Our Selections

-- SELECT distinct author_lname from books; 
	-- Selects the unique last names of the author

-- SELECT distinct released_year from books;

-- SELECT DISTINCT CONCAT_WS(' ',author_fname,author_lname) as 'Full Name' from books;

-- SELECT DISTINCT author_fname,author_lname from books;

-- SELECT DISTINCT author_lname FROM books ORDER BY author_lname;

-- SELECT DISTINCT title from books order by title;

-- SELECT DISTINCT title from books order by title DESC;

-- SELECT DISTINCT released_year from books ORDER BY released_year desc;

-- select distinct * from books ORDER BY released_year ;

/*
SELECT title,
       author_fname,
       author_lname
FROM   books
ORDER  BY 2; 
*/

/*
SELECT DISTINCT title,
                author_fname,
                author_lname
FROM   books
ORDER  BY 3; 
*/

-- select author_fname,author_lname from books order by author_lname,author_fname;

-- select author_fname,author_lname from books limit 4;

/*
SELECT title,
       released_year
FROM   books
ORDER  BY 2 DESC
LIMIT  5;
*/

/*
SELECT  title,
		released_year
FROM books
ORDER BY 2
LIMIT 0,6;
*/

/*
SELECT title,
       author_fname
FROM   books
WHERE  author_fname LIKE '%da%'; 
*/

/*
SELECT	title,
		author_fname
FROM	books
WHERE 	author_fname LIKE 'da%';
*/

/*
SELECT	title,
		author_fname,
        stock_quantity
FROM	books
WHERE	stock_quantity LIKE '__'
*/

/*
SELECT	title,
		author_fname,
        stock_quantity
FROM	books
WHERE	title LIKE '%\%%';
*/

/*
SELECT	title,
		author_fname,
        stock_quantity
FROM	books
WHERE	title LIKE '%\_%'
*/


