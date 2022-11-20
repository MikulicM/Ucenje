#vlasnik,restoran,inspekcija,inspektor,prekrsaj

drop database if exists drazavniinspektorat;
create database drazavniinspektorat;
use drazavniinspektorat;

create table vlasnik(
    sifra_vlasnika int not null primary key auto_increment,
    ime varchar(50),
    prezime varchar(50),
    broj_telefona int,
    restoran int
);

create table restoran(
    sifra_restorana int not null primary key auto_increment,
    naziv varchar(50),
    adresa varchar(50),
    broj_telefona int
);

create table inspekcija(
    sifra_inspekcije int,
    sifra int not null primary key auto_increment,
    sifra_inspektora int,
    sifra_restorana int,
    sifra_prekrsaja int,
    vrijeme_dolaska datetime,
    ocijena_cistoce varchar(50),
    restoran int
);

create table inspektor(
    sifra_inspektora int not null primary key auto_increment,
    ime varchar(50),
    prezime varchar(50),
    inspekcija int
);

create table prekrsaj(
    sifra_prekrsaja int not null primary key auto_increment,
    opis text,
    kazneni_bodovi int,
    ocijena_cistoce int,
    restoran int
);


alter table inspektor add foreign key (inspekcija) references inspekcija(sifra);
alter table prekrsaj add foreign key (restoran) references restoran(sifra_restorana);
alter table vlasnik add foreign key (restoran) references restoran(sifra_restorana);
alter table inspekcija add foreign key (restoran) references restoran(sifra_restorana);