/*
INSERT INTO shirts (article,color,shirt_size,last_worn) 
VALUES ('t-shirt','white','S',10),
('t-shirt','green','S',200),
('polo shirt','black','M',10),
('tank top','blue','S',50),
('t-shirt','pink','S',0),
('polo shirt','red','M',5),
('tank top','white','S',200),
('tank top','blue','M',15);	
*/

-- select * from shirts;

/*
INSERT INTO shirts (article,color,shirt_size,last_worn)
VALUE ('polo shirt','purple','M',50);
*/

-- SELECT article,color from shirts;

/*
SELECT * except shirt_id from shirts 
WHERE shirt_size='M';
*/

-- select * from shirts where last_worn=15;

/*
UPDATE shirts
SET last_worn=0
WHERE shirt_id=8;
*/


/*UPDATE shirts
SET shirt_size='XS',color='off white'
WHERE color='white';
*/

-- select * from shirts;

-- select * from shirts where last_worn=200;

/*
DELETE FROM shirts
WHERE last_worn=200;
*/

-- select * from shirts;

/*
DELETE FROM shirts 
WHERE article='tank top';
*/

-- SELECT * FROM shirts;

-- DELETE FROM shirts;

-- DROP TABLE shirts;

-- show tables;
