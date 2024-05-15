create database EladTest;

use EladTest;

create table pet (
	id INT unsigned not null auto_increment primary key ,
    kind varchar(45),
    color varchar(45),
    birth_date date,
    arrival_data date
) ;

create table owner (
	id INT unsigned not null auto_increment primary key,
    first_name varchar(45),
    last_name varchar(45),
    gender varchar(1)
) ;

create table adoption (
	owner_id int unsigned,
    pet_id int unsigned unique,
    adoption_date date,
    primary key(owner_id, pet_id),
    constraint fk_owner_id
    foreign key(owner_id)
    references owner(id),
    constraint fk_pet
    foreign key (pet_id)
    references pet(id)
) ;