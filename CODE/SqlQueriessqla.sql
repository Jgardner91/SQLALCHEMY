-- SQL QUERIES ASSOCIATED WITH SQL ALCHEMY 

-- SELECT STATEMENT

SELECT title, description, length, rating
from FILM;

-- SELECT and LIKE STATEMENT

SELECT title, description, length, rating 
from FILM
where title like '%Dinosaur%';

-- AND STATEMENT 
select title, description, length, rating 
from FILM 
where title like '%Dinosaur%' and rating == 'PG' and length <= 90;

-- GROUP BY, ORDER BY and COUNT 

select  rating, count(rating) as 'NUMPER'
from FILM 
group by rating 
order by 'NUMPER' desc;

-- JOIN operation 
select first_name, rental_date, return_date, rental.customer_id , rental.staff_id,inventory.film_id
from rental 
join inventory
on rental.inventory_id == inventory.inventory_id
join customer 
on rental.customer_id == customer.customer_id
where customer.first_name == 'CHARLOTTE';