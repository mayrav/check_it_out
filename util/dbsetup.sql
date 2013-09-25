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
    person_fname text,
    person_lname text,
    item_id integer,
    item_name text,
    checked_out date not null,
    foreign key(person_id) references persons(id),
    foreign key(person_fname) references persons(f_name),
    foreign key(person_lname) references persons(l_name),
    foreign key(item_id) references items(id),
    foreign key(item_name) references items(name)
);

insert into persons (f_name,l_name,email,phone)  values ('Bob', 'Hans', 'bh@gmail.com', '1111111111');
insert into persons (f_name,l_name,email,phone)  values ('Greg', 'Bennington', 'gb@gmail.com', '2222222222');
insert into persons (f_name,l_name,email,phone)  values ('Charlie', 'Brown', 'cb@gmail.com', '3333333333');

insert into items (name,item_type,specs)  values ('laptop1', 'laptop', 'blue dell');
insert into items (name,item_type,specs)  values ('snowglobe', 'snowglobe', 'the snowglobe with the snowman in it');
insert into items (name,item_type,specs)  values ('raspberrypi', 'raspberrypi', 'the one with 64gb');

insert into loans (person_id,person_fname,person_lname,item_id,item_name,checked_out)  values (1, 'Bob', 'Hans', 2, 'Snowglobe', '2013-03-18');
insert into loans (person_id,person_fname,person_lname,item_id,item_name,checked_out)  values (2, 'Greg', 'Bennington', 3, 'raspberrypi', '2013-03-18');
insert into loans (person_id,person_fname,person_lname,item_id,item_name,checked_out)  values (3, 'Charlie', 'Brown', 1, 'laptop1', '2013-03-18');
