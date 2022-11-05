create database cms;
use cms;

create table cab(cab_no int primary key,
 cab_name varchar(50) not null,
cab_desc varchar(100) not null,
cab_seat int);

CREATE table cab_schedule(c_id int primary key,
cab_from varchar(100) not null,
cab_to varchar(100) not null,
cab_date date not null,
cab_time time not null,
cab_cost int not null,
c_no int,
CONSTRAINT FK_c_no FOREIGN KEY(c_no) REFERENCES cab(cab_no)
on delete set null
);

create table passengers(
	p_id int primary key auto_increment,
    p_name varchar(50) not null,
    user_name varchar(50) not null,
    email varchar(50) not null,
    u_password varchar(20) not null,
    mobile bigint not null,
    address varchar(100),
    dob date
    );


create table cab_booking(
ticket_no int primary key auto_increment,
date_of_booking date not null,
date_of_travel date not null,
cab_seat int not null,
cab_fare int not null,
cab_passenger int not null,
constraint fk_cab_cab_no foreign key(ticket_no)
references cab(cab_no),
constraint fk_cab_p_id foreign key(cab_passenger)
references passengers(p_id));

drop table cab_booking;


