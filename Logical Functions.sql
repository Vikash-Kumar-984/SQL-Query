-- Logical Functions 

use world;

select * from city;

select avg(population) as Average from city;  #here 'as' is optional

select name,countrycode, district, population,
if(population >= 350468, "Above Global Average", "Below Global Average") as Population_Status  #if(condition, TRUE, FALSE)
from city;

select name,countrycode, district, population,
if(population >= 350468, "Above Global Average", "Below Global Average") as Population_Status,
count(name) as Number_of_City 
from city group by Population_Status;

select * from country;

select name,continent,indepyear,ifnull(indepyear,0) as ifnull_year
from country;

select name,continent,GNp, gnpold, nullif(gnp,gnpold) as Check_GNP from country; 
#nullif check if both column data is same, if it is same then it will return null or else first value (here gnp)

#Multiple Categorization

select * from city;

select name, district, population,
Case
	when population <=50000 then "low"
    when population between 50000 and 300000 then "moderate"
    when population between 300000 and 1000000 then "high"
    else "very high"
end as Population_Category
from city;

select avg(population) from city;

select 
Case
	when population <=50000 then "low"
    when population between 50000 and 300000 then "moderate"
    when population between 300000 and 1000000 then "high"
    else "very high"
end as Population_Category,
count(name) as Number_of_Cities,
round(count(name) *100/ 4079,2) as Percentage_City
from city group by population_category;


#Coalsce

select * from country;

select name, gnp,gnpold,coalesce(gnp,gnpold,"NA") as GNP_Check from country;