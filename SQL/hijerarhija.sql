drop database if exists hijerarhija;
create database hijerarhija;
use hijerarhija;

create table zaposlenik(
    sifra int not null primary key,
    ime varchar(50),
    prezime varchar(50),
    placa decimal(18,2),
    nadredeni int
);

alter table zaposlenik add foreign key (nadredeni) references zaposlenik(sifra);
