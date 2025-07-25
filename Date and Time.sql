use sakila;

select current_date();

select current_time();

select now();

select * from rental;

select rental_id, rental_date, date(Rental_date) as R_date,
time(rental_date) as R_Time from rental;

select rental_id, rental_date, day(Rental_date) as Rent_day,
month(Rental_date) as Rent_month,
year(Rental_date) as Rent_year from rental;

select rental_id, rental_date, time(rental_date) as Rent_time,
hour(Rental_date) as Rent_Hour,
minute(Rental_date) as Rent_Minutes,
second(Rental_date) as Rent_Seconds from rental;


select rental_id, date(rental_date) as Rental_date,
date_add(date(rental_date), interval 5 day) as Target_date
from rental;

select rental_id, date(rental_date) as Rental_date,
date(return_date) as return_date,
datediff(return_date, rental_date) as Holding_Days
from rental;

select * from rental;

select customer_id,
avg(datediff(return_date,rental_date)) as Average_Holding_Days
from rental group by customer_id;

select customer_id,
if(datediff(return_date,rental_date) > 7, "late", "On Time") as Return_status
from rental;

select customer_id,
if(datediff(return_date,rental_date) > 7, "late", "On Time") as Return_status
from rental
group by customer_id;

select customer_id,
if(datediff(return_date,rental_date) > 7, "late", "On Time") as Return_status
from rental
group by customer_id
having Return_status = "Late";