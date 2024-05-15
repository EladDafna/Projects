#q4.sql: Show how much each pet waited (in days) from arrival to adoption(example: if a dog 
#arrived in 2003 and adopted in 2005 it waited 2 years, a dog arrived in 2007 and adopted in 
#2010 waited 3 years) ordered from highest waiting time to lowest. 

use EladTest;

select p.id, p.kind, datediff(adoption_date, arrival_data) as days_waited from pet as p
join adoption as a
on a.pet_id = p.id
order by days_waited desc
;



