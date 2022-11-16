drop database if exists vrtic;
create database vrtic;
use vrtic;

create table skupina(
    sifra int not null primary key auto_increment,
    dob varchar(50),
    pocetak datetime,
    odgajateljica int
);

create table djete(
    sifra int not null primary key auto_increment,
    ime varchar(50),
    prezime varchar(50),
    oib char(11)
);

create table odgajateljica(
    sifra int not null primary key auto_increment,
    ime varchar(50),
    prezime varchar(50),
    iban varchar (50)
);

create table strucnasprema(
    sifra int not null primary key auto_increment,
    koja varchar(50),
    gdje varchar(50),
    kada datetime
);

alter table djete add foreign key (odgajateljica) references skupina(odgajateljica);
