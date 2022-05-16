select * from books;

-- select reverse(upper('Why my cat look at me with such hatred?'));

/*
select 
	replace(title,' ','->') as title
from books


select author_lname as forwards,
	reverse(author_lname) as backwards
from books;



select concat(author_fname,' ',author_lname) as 'full name in caps' from books;



select concat_ws(' ',title,'was released in',released_year) from books;



select title,char_length(title) as 'character count' from books;


select concat(substr(title,1,10),'...') as 'short title',
	   concat_ws(',',author_lname,author_fname) as author,
	   concat_ws(' ',stock_quantity,'in stock') as quantity
       from books;
*/
