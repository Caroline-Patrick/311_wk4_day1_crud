select * from users;
select * from usersAddress;
select * from usersContact;

-- get rid of foreign keys to be able to delete parent 
SET foreign_key_checks = 0;

delete from users where id = 114; 
DELETE FROM admin.usersContact WHERE (id = '114');
delete from usersAddress where id = 114;

-- add foreign key back
SET foreign_key_checks = 1;

