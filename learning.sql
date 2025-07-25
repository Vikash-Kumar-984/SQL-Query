create database world;

use world;
select * from city;
select * from country;
select * from countrylanguage;

## SQL is not case sensitive language

select Name,Continent,Region from country;
select * from country;

select name,region, round(population/surfacearea,2) as Polulation_Density, round(GNP * 1000000/ Population,0) as GNP_per_capita_income
from country;

# Highest gnp per capita income
select name,region, round(population/surfacearea,2) as Polulation_Density, round(GNP * 1000000/ Population,0) as GNP_per_capita_income
from country order by Gnp_per_capita_income desc limit 5;

#offset: ignore the n number of rows
#Rank from 11 to 15 as offset ignores the top 10 rannks and limit gives 5 next rows 
select name,region, round(population/surfacearea,2) as Polulation_Density, round(GNP * 1000000/ Population,0) as GNP_per_capita_income
from country order by Gnp_per_capita_income desc limit 5 offset 10;


##Display the data in an order
select name, region, population,surfacearea
from country
order by population desc;

#By default orderby is in ascending order, 2 columns as by order
select name, region, population,surfacearea
from country
order by surfacearea, population desc;


##Filtering of data
## where and having
#Relational Operators - <,>,>=,<=,=,<>(not equal to)

select * from city;

select * from city where population > 500000;

select * from country;

select name, continent, region, lifeexpectancy as le from country
where lifeexpectancy > 70
order by le;

# Relational operations on string value column also (in dictionay order)
select name, continent, indepyear, gnp from country 
where name > "india"
order by name;


##Logical Operators: and, or
select name, continent, surfacearea,indepyear,lifeexpectancy,gnp from country
where continent = "asia" and lifeexpectancy > 70;

select name, continent, surfacearea,indepyear,lifeexpectancy,gnp from country
where continent = "asia" or lifeexpectancy > 70;

select name, continent, surfacearea,indepyear,lifeexpectancy,gnp from country
where continent = "asia" or continent = "europe" or continent ="south america";


##In Operator: multiple operation on SAME column

select name, continent, surfacearea,indepyear,lifeexpectancy,gnp from country
where continent in ("asia","europe","south america");

##Between Operator

select name, continent, surfacearea,indepyear,lifeexpectancy,gnp from country
where lifeexpectancy between 60 and 70
order by lifeexpectancy;

select name, continent, surfacearea,indepyear,lifeexpectancy,gnp from country
where name between "china" and "india"
order by name;

##Like: returns exact match data

select * from city;

select id,name,district,population from city
where id like 45;

select id,name,district,population from city
where name like "i%"; # '%' means any value or character after i 

select id,name,district,population from city
where name like "%i";

select id,name,district,population from city
where name like "%i%";

select id,name,district,population from city
where name like "tilburg";

select id,name,district,population from city
where name not like "i%";

select id,name,district,population from city
where name like "____i"; #underscore means fixed number of characters, here 4 underscore

select id,name,district,population from city
where name like "%___i"; #intially any number of character including 0 but 3 characters ending with i at the end is must