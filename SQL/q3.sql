#q3.sql: Show how many pets were adopted between 2016-01-01 and 2018-01-01 
# הראה כמה חיות מחמד אומצו בין 2016-01-01 ל-2018-01-01

Use EladTest;

#solution A
SELECT count(*) As Count_adoption_date from adoption
where adoption_date between '2016-01-01' and '2018-01-01';

#solution B
select count(*) As Count_adoption_date from adoption
where adoption_date >= '2016-01-01' and adoption_date <= '2018-01-01';


