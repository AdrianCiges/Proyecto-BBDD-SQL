ALTER TABLE actor 
ADD complet_name VARCHAR(100) not null;

select * from actor;

UPDATE actor SET complet_name = concat(first_name, ' ', last_name);

alter table actor drop column complete_name;
  
select * from rental;

update rental set inventory_id = ROUND((1000) * RAND() + 1);

ALTER TABLE old_hdd 
ADD complet_name VARCHAR(100) not null;

UPDATE old_hdd SET complet_name = concat(first_name, ' ', last_name);


create table filmactor
select f.film_id, a.actor_id, c.category_id
from film as f

inner join old_hdd as o
on f.title = o.title

left join actor as a
on a.complet_name = o.complet_name

left join category as c
on c.category_id = o.category_id
;

select * from actor;

alter table actor
add primary key (actor_id);

delete from actor where actor_id is null;

ALTER TABLE filmactor
   ADD FOREIGN KEY (actor_id) 
      REFERENCES actor(actor_id);
      
ALTER TABLE filmactor
DROP CONSTRAINT actor_id;

alter table film
add primary key (film_id);

alter table category
add primary key (category_id);

alter table languaje
add primary key (language_id);

alter table inventory
add primary key (inventory_id);

alter table rental
add primary key (rental_id);

ALTER TABLE filmactor
   ADD FOREIGN KEY (film_id) 
      REFERENCES film(film_id);
      
ALTER TABLE filmactor
   ADD FOREIGN KEY (category_id) 
      REFERENCES category(category_id);
      
ALTER TABLE inventory
   ADD FOREIGN KEY (film_id) 
      REFERENCES film(film_id);
      
ALTER TABLE rental
   ADD FOREIGN KEY (inventory_id) 
      REFERENCES inventory(inventory_id);
      
ALTER TABLE film
   ADD FOREIGN KEY (language_id) 
      REFERENCES languaje(language_id);
      
select * from film;

ALTER TABLE film DROP COLUMN language_id;
 
ALTER TABLE film 
ADD language_id BIGINT null;

UPDATE film SET language_id = 1;

select * from film;

ALTER TABLE film
   ADD FOREIGN KEY (language_id) 
      REFERENCES languaje(language_id);
      
DROP TABLE old_hdd;
