#Show unadopted dogs from oldest to youngest 

Use EladTest;

select * from Pet as p
left join adoption as a
on a.pet_id = p.id
where kind = "dog" and a.pet_id is null
order by p.birth_date desc;
