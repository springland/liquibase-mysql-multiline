-- liquibase formatted sql
-- changeset your.name:101

create table IF NOT EXISTS  tbl_customer
(   id INT ,
     name varchar(100)
 );
