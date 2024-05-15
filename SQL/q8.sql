#for each female who adopted cats, show how many cats they adopted, ordered from 
#most cats to least. 

Use EladTest;

select o.first_name, o.last_name, count(*) as Number_of_Cats_adopted
from owner as o
join adoption as a on o.id = a.owner_id
join pet as p on p.id = a.pet_id
where o.gender = "F" and p.kind = "Cat"
group by o.first_name, o.last_name, gender
order by Number_of_Cats_adopted desc;

