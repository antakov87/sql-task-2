create table if not exists Genre (
    id serial primary key,
    name varchar(50) not null unique
);

create table if not exists Performers (
    id serial primary key,
    nickname varchar(40) not null unique,
    genre_id integer references Genre(id)
);

create table if not exists Album (
    id serial primary key,
    name varchar(100) not null,
	release_year integer,
	perfomers_id integer references Performers(id)
);

create table if not exists Track (
    id serial primary key,
    name varchar(60) not null,
	duraction integer not null,
    album_id integer references Album(id)
);