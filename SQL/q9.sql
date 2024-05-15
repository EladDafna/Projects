#find all owners with no adoptions.  

Use EladTest;

select o.first_name,o.last_name from owner as o
left join adoption as a on a.owner_id = o.id
left join pet as p on p.id = a.pet_id
where a.pet_id is null
;