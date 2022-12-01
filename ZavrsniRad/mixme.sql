drop database if exists mixme;
create database mixme;
use mixme;

create table korisnik (
    sifra_korisnik int not null primary key auto_increment,
    nadimak varchar(20),
    datumrodenja datetime,
    igrica int,
    email varchar(50),
    regija int,
    mikrofon boolean
);

create table igrica (
    sifra_igrica int not null primary key auto_increment,
    rust boolean,
    lol boolean,
    wow boolean
);

create table regija(
    sifra_regija int not null primary key auto_increment,
    europa boolean,
    sj_amerika boolean,
    azija boolean
);

create table objava(
    sifra_objava int not null primary key auto_increment,
    sifra_korisnik int,
    opis varchar(255) not null,
    datumobjave datetime not null,
    lajk boolean,
    komentar varchar(120)
);

create table korisnik_igrica(
    sifra_korisnik int,
    sifra_igrica int
);


alter table korisnik_igrica add foreign key (sifra_korisnik) references korisnik(sifra_korisnik);
alter table korisnik_igrica add foreign key (sifra_igrica) references igrica(sifra_igrica);
alter table korisnik add foreign key (regija) references regija(sifra_regija);
alter table objava add foreign key (sifra_korisnik) references korisnik(sifra_korisnik);