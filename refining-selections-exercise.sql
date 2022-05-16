-- use book_shop;
-- select database();
-- show tables;
-- select * from books;

-- SELECT title from books 
-- WHERE title LIKE '%stories%';

-- select title,pages from books order by 2 desc limit 1;

/*
SELECT Concat_ws('-', title, released_year) AS summary
FROM   books
ORDER  BY released_year DESC
LIMIT  4 
*/

-- select title,author_lname from books where author_lname LIKE '% %'

-- select title,released_year,stock_quantity from books order by 3 LIMIT 3;

-- select title,author_lname from books order by 2,1;

/*
SELECT Concat_ws(' ', 'MY FAVOURITE AUTHOR IS',
              Concat(Upper(author_fname), ' ', Upper(author_lname), ' !')) AS
       yell
FROM   books
ORDER  BY author_lname; 
*/

