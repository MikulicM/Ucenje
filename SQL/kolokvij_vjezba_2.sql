drop database if exists kolokvij_vjezba_2;
create database kolokvij_vjezba_2;
use kolokvij_vjezba_2;

create table decko(
    sifra int not null primary key auto_increment,
    indiferento bit,
    vesta varchar(34),
    asocijalno bit not null
);

create table cura(
    sifra int not null primary key auto_increment,
    haljina varchar(33) not null,
    drugiputa datetime not null,
    suknja varchar(38),
    narukvica   int,
    introvertno bit,
    majica varchar(40) not null,
    decko int

);

create table zarucnica(
    sifra int not null primary key auto_increment,
    narukvica int,
    bojakose varchar(37) not null,
    novcica decimal(15,9),
    lipa decimal(15,8) not null,
    indiferento bit not null
);

create table decko_zarucnica(
    sifra int not null primary key auto_increment,
    decko int not null,
    zarucnica int not null
);

create table neprijatelj(
    sifra int not null primary key auto_increment,
    majica varchar(32),
    haljina varchar(43) not null,
    lipa decimal(16,8),
    modelnaocala varchar(49) not null,
    kuna decimal(12,6) not null,
    jmbag char(11),
    cura int

);

create table brat(
    sifra int not null primary key auto_increment,
    suknja varchar(47),
    ogrlica int not null,
    asocijalno bit not null,
    neprijatelj int not null
);

create table prijatelj(
    sifra int not null primary key auto_increment,
    modelnacala varchar(37),
    treciput datetime not null,
    ekstrovetno bit not null,
    prviputa datetime,
    svekar int not null
);

create table svekar (
    sifra int not null primary key auto_increment,
    stilfrizura varchar(48),
    ogrlica int not null,
    asocijalno bit not null
);

alter table decko_zarucnica add foreign key (decko) references decko(sifra);
alter table decko_zarucnica add foreign key (zarucnica) references zarucnica(sifra);
alter table cura add foreign key (decko) references decko(sifra);
alter table neprijatelj add foreign key (cura) references cura(sifra);
alter table brat add foreign key (neprijatelj) references neprijatelj(sifra);
alter table prijatelj add foreign key (svekar) references svekar(sifra);

