create table persons (
    id  integer primary key autoincrement,
    f_name  varchar(25),
    l_name  varchar(25),
    email varchar(50),
    phone varchar(14)
       
);

create table items (
    id  integer primary key autoincrement,
    name varchar(25),
    item_type varchar(25),
    specs varchar(25)
);

create table loans (
    person_id  integer,
    first_name varchar(25),
    last_name varchar(25),
    item_id integer,
    checked_out date,
    foreign key(person_id) references persons(id),
    foreign key(item_id) references items(id),
    foreign key(first_name) references persons(f_name),
    foreign key(last_name) references persons(l_name)
);

insert into persons (f_name,l_name,email,phone)  values ('Bob', 'Hans', 'bh@gmail.com', '1111111111');
insert into persons (f_name,l_name,email,phone)  values ('Greg', 'Bennington', 'gb@gmail.com', '2222222222');
insert into persons (f_name,l_name,email,phone)  values ('Charlie', 'Brown', 'cb@gmail.com', '3333333333');

insert into items (name,item_type,specs)  values ('laptop1', 'laptop', 'blue dell');
insert into items (name,item_type,specs)  values ('snowglobe', 'snowglobe', 'the snowglobe with the snowman in it');
insert into items (name,item_type,specs)  values ('raspberrypi', 'raspberrypi', 'the one with 64gb');

insert into loans (checked_out)  values ('2013-03-18');
insert into loans (checked_out)  values ('2013-04-13');
insert into loans (checked_out)  values ('2013-11-18');

