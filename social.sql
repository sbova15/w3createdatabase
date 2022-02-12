create database if not exists social;
use social;
drop table if exists comment;
drop table if exists post;
drop table if exists user;

create table user(
id int(20) not null auto_increment,
first_name varchar(20) not null,
last_name varchar(20),
username varchar(20) not null,
email varchar(30) not null,
password varchar(8) not null,
primary key (id)
);
create table post(
id int(20) not null auto_increment,
user_id int(20) not null,
post_text text,
post_time datetime,
primary key (id),
foreign key (user_id) references user(id)
);
create table comment(
id int(20) not null auto_increment,
post_id int(20) not null,
user_id int(20) not null,
comment_text text,
comment_time datetime,
primary key (id),
foreign key (post_id) references post(id),
foreign key (user_id) references user(id)
);
insert into user
values(1,'sam','bova','sambova','sbova@email.com','password');

insert into user
Values(2,'tom','waits','twaits','waiters@gmail.com','password');

insert into post
values (1,1,'Its a good day!','2022-02-11 10:12:24');

insert into comment
values (1,1,2,'It sure is!','2022-02-11 11:15:00');