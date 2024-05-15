## Lab | SQL Queries 4
## In this lab, you will be using the Sakila database of movie rentals.

use sakila; ## Use the database sakila 

## Get film ratings.

select * from film;
select distinct rating from film;  ## The SELECT DISTINCT statement is used to return only distinct (different) values.

## Get release years.

select distinct release_year from film;

## Get all films with ARMAGEDDON in the title.

select *
	from film
		where title like "%ARMAGEDDON%";  ## To return records that contains a specific letter or phrase, add the % both before and after the letter or phrase (e.g. SELECT * FROM Customers WHERE CustomerName LIKE '%or%';)

## Get all films with APOLLO in the title

select *
	from film
		where title like "%APOLLO%";

## Get all films which title ends with APOLLO.

select *
	from film
		where title like "%APOLLO";  ## To return records that ends with a specific letter or phrase, add the % at the beginning of the letter or phrase (e.g. SELECT * FROM Customers WHERE CustomerName LIKE '%a';)

## Get all films with word DATE in the title.

select *
	from film
		where title like "%DATE%";

## Get 10 films with the longest title.

select count(title) from film  ## There are 1000 titles

select *, length(title) as title_length  ## Creating an extra column with the name "title_lenght"
	from film
		order by title_length desc
			limit 10;

## Get 10 the longest films.

select *
	from film
		order by length desc
			limit 10;

## How many films include Behind the Scenes content?

select count(*)
	from film
		where special_features like "%Behind the Scenes%";   ## There are 538 films wich include Behind the Scenes content

## List films ordered by release year and title in alphabetical order.

select *
	from film
		order by release_year, title desc;
