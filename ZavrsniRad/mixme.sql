drop database if exists mixme;
create database mixme;
use mixme;

create table korisnik (
    sifra_korisnika int not null primary key auto_increment,
    nadimak varchar(20),
    datumrodenja datetime,
    igrica int,
    email varchar(50),
    regija int,
    mikrofon boolean
);

create table chat (
    sifra int not null primary key auto_increment,
    
);