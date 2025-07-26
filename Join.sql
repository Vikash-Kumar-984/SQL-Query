# Join

use world;

select * from country;
select * from city;
select * from countrylanguage;

select count(distinct countrycode) from countrylanguage; #233
select count(distinct countrycode) from city; #232
select count(distinct code) from country; #239

#select column_name from table_1 
#type_of_join table_2
#on table_1.common_column = table_2.common_column


select id,countrycode,District,region from city inner join country on city.CountryCode = country.code; 

select code,count(distinct District) as no_of_district from country co left join city ci
on co.code = ci.CountryCode
group by code;

select code,count(distinct District) as no_of_district from country co right join city ci
on co.code = ci.CountryCode
group by code;
#here right table is primary table


#Full Join

select code,count(distinct District) as no_of_district from country co left join city ci
on co.code = ci.CountryCode
group by code

Union

select code,count(distinct District) as no_of_district from country co right join city ci
on co.code = ci.CountryCode
group by code;