-- Create table
create table ad_user
(
  ad_user_id          BIGINT not null,
  user_name         VARCHAR(36) not null,
  encrypted_password VARCHAR(128) not null,
  enabled           Int not null 
) ;
--  
alter table ad_user
  add constraint ad_user_pk primary key (ad_user_id);
 
alter table ad_user
  add constraint ad_user_uk unique (user_name);
 
 
-- Create table
create table ad_role
(
  ad_role_id   BIGINT not null,
  role_name VARCHAR(30) not null
) ;
--  
alter table ad_role
  add constraint ad_role_pk primary key (ad_role_id);
 
alter table ad_role
  add constraint ad_role_uk unique (role_name);
 
 
-- Create table
create table user_role
(
  ID      BIGINT not null,
  ad_user_id BIGINT not null,
  ad_role_id BIGINT not null
);
--  
alter table user_role
  add constraint user_role_pk primary key (id);
 
alter table user_role
  add constraint user_role_uk unique (ad_user_id, ad_role_id);
 
alter table user_role
  add constraint user_role_fk1 foreign key (ad_user_id)
  references ad_user (ad_user_id);
 
alter table user_role
  add constraint user_role_fk2 foreign key (ad_role_id)
  references ad_role (ad_role_id);
 
  
  
-- Used by Spring Remember Me API.  
CREATE TABLE persistent_logins (
 
    username varchar(64) not null,
    series varchar(64) not null,
    token varchar(64) not null,
    last_used timestamp not null,
    PRIMARY KEY (series)
     
);
  
--------------------------------------
 
insert into ad_user (ad_user_id, user_name, encrypted_password, enabled)
values (2, 'dbuser1', '$2a$10$PrI5Gk9L.tSZiW9FXhTS8O8Mz9E97k2FZbFvGFFaSsiTUIl.TCrFu', 1);
 
insert into ad_user (ad_user_id, user_name, encrypted_password, enabled)
values (1, 'dbadmin1', '$2a$10$PrI5Gk9L.tSZiW9FXhTS8O8Mz9E97k2FZbFvGFFaSsiTUIl.TCrFu', 1);
 
---
 
insert into ad_role (ad_role_id, role_name)
values (1, 'ROLE_ADMIN');
 
insert into ad_role (ad_role_id, role_name)
values (2, 'ROLE_USER');
 
---
 
insert into user_role (ID, ad_user_id, ad_role_id)
values (1, 1, 1);
 
insert into user_role (ID, ad_user_id, ad_role_id)
values (2, 1, 2);
 
insert into user_role (ID, ad_user_id, ad_role_id)
values (3, 2, 2);
---
Commit;