-- Hello World

-- show databases;
-- use book_shop;

-- show tables;
select * from books;

-- SELECT COUNT(*) AS 'no of books' FROM books;

-- SELECT COUNT(DISTINCT author_fname) from books;

-- SELECT COUNT(DISTINCT CONCAT(author_fname,' ',author_lname)) AS 'authors count' FROM books;

--      OR

-- select count(distinct author_fname, author_lname) from books;

-- select count(*) from books where title like '%the%'


-- ---- GROUP BY CLAUSE (IMP) ---- --
/*

SELECT author_lname,
       Count(*)
FROM   books
GROUP  BY author_lname; 

SELECT	author_fname,
		author_lname,
        COUNT(*)
FROM	books
GROUP BY author_lname,author_fname;

SELECT	released_year,
		COUNT(*) 
FROM books
GROUP BY released_year
ORDER BY released_year;
*/

-- ---- MIN AND MAX ---- --

select MIN(released_year) FROM books;
select min(pages) from books;

select max(pages) from books;

select max(released_year) from books;

-- select title,max(pages) from books; --> This won't work because title and max(pages) are independent of each other.

SELECT title,
       pages
FROM   books
WHERE  pages = (SELECT Max(pages)
                FROM   books); 
                
                
SELECT title,
       pages
FROM   books
WHERE  pages = (SELECT min(pages)
                FROM   books); 

SELECT	author_fname,
		author_lname,
        min(released_year)
FROM	books
GROUP BY author_lname,author_fname;

SELECT author_fname,author_lname,max(pages)
FROM books
GROUP BY author_lname,author_fname;

SELECT sum(pages) from books;

select sum(released_year) from books;

select Concat(author_fname,' ',author_lname) AS 'author name', 
	   sum(pages) AS 'total pages'
FROM books
GROUP BY author_fname,author_lname
ORDER BY 2 desc;


