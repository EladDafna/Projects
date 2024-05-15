#Find which pets were born in the shelter (if their arrival date is the same as their birth 
#date) 

Use EladTest;

select id, kind, color from pet
where birth_date = arrival_data
