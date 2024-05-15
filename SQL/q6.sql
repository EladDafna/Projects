#Show for each kind of animal how many got adopted, ordered from most adopted to least.
#(how many dogs were adopted, how many cats were adopted etc) 

use EladTest;

select kind, count(kind) as Sum_by_kind from pet as p
join adoption as a
on p.id = a.pet_id
group by kind
Order by sum_by_kind desc;
