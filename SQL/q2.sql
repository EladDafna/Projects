#q2.sql: create a query to show how many pets are unadopted 
#צור שאילתה כדי להראות כמה חיות מחמד לא מאומצות

use EladTest;

select count(*) as unadopted_pets from pet as p
left join adoption as a 
on p.id = a.pet_id
where a.pet_id is null;
;


