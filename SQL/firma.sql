drop database if exists firma;
create database firma;
use firma;
#projekt,programer,sudjeluje

create table programer(
    sifra int not null primary key auto_increment,
    ime varchar(50),
    prezime varchar(50),
    datumrodenja datetime,
    placa decimal(18,2)
);

create table projekt(
    sifra int not null primary key auto_increment,
    naziv varchar (50),
    cijena decimal(18,2)
);

create table sudjeluje(
    sifra int not null primary key auto_increment,
    projekt int,
    programer int,
    datumpocetka datetime,
    datumkraja datetime

);

alter table sudjeluje add foreign key (programer) references programer(sifra);
alter table sudjeluje add foreign key (projekt) references projekt(sifra);