create table Küchenart (KA_ID integer Primary key,Bezeichnung varchar(30) );
--drop table Küchenart

insert into Küchenart values (1,'Italienische Küche')
insert into Küchenart values (2,'asiatische Küche')
insert into Küchenart values (3,'Fastfood')
insert into Küchenart values (4,'To Go')
insert into Küchenart values (5, 'Deutsche Küche')
insert into Küchenart values (6, 'Canabiiiiiiiiiiiis')

create table Kontakt_Art (K_Art char(3), Bezeichnung varchar(30),primary key (K_Art));
--drop table Kontakt_Art    

insert into Kontakt_Art values ('T','Telefon')
insert into Kontakt_Art values ('e','e-Mail')
insert into Kontakt_Art values ('url','Webadresse')

create table Bewertung (B_ID integer, BBezeichnung varchar(30) primary key (B_ID));
--drop table Bewertung

insert into Bewertung values (1,'vergiss es')
insert into Bewertung values (2,'Aufpassen')
insert into Bewertung values (3,'Geht so')
insert into Bewertung values (4,'Gut')
insert into Bewertung values (5,'Sehr Gut')


create table Entfernung (E_ID integer primary key, EBezeichnung varchar (30) );
--drop table Entfernung

insert into Entfernung values (1,'weniger als 100 meter')
insert into Entfernung values (2,'weniger als 200 meter')
insert into Entfernung values (3,'weniger als 300 meter')
insert into Entfernung values (4,'weniger als 400 meter')
insert into Entfernung values (5,'weniger als 500 meter')

create  Table GerichteKategorie(GK_ID integer primary key,GKBezeichnung varchar (30));
--drop table GerichteKategorie

insert into GerichteKategorie values (1,'Vegan')
insert into GerichteKategorie values (2,'Vegetarisch')
insert into GerichteKategorie values (3,'Fleisch / Fisch')
insert into GerichteKategorie values (4,'Vegan,Fleisch / Fisch')
insert into GerichteKategorie values (5,'Vegetarisch,Fleisch / Fisch')
--insert into GerichteKategorie values (6,'Vegan,Vegetarisch,Fleisch / Fisch')
/*insert into GerichteKategorie values (7,'')
insert into GerichteKategorie values (8,'')
insert into GerichteKategorie values (9,'Fleisch / Fisch')*/


create table Restaurant (ID integer primary key, Name varchar(50),Küchenart integer, 
PreiseAb varchar(10),entfernung integer,
Bewertung integer,Ruhetag varchar (30),Strasse varchar (50), PLZ char(5), Ort varchar (30),
foreign key (Bewertung) references Bewertung (B_ID),
foreign key (entfernung) references entfernung (E_ID),
foreign key (Küchenart) references Küchenart (KA_ID));

--drop table Kontakt
--drop table Res_Gerkat
--drop table Restaurant



insert into Restaurant values (1,'Fränk`ness',5,'<5,- €',2,5,'Montag','Königstr 70',90402,'Nürnberg')
insert into Restaurant values (2,'Restaurant im Literaturhaus',5,'<5,- €',2,4,null,'Luitpoldstr. 6',90402,'Nürnberg')
insert into Restaurant values (3,'McDonalds',3,'<5,- €',4,3,null,'Breitegasse 6',90402,'Nürnberg')
insert into Restaurant values (4,'Sangam',2,'<5,- €',2,2,null,'Königstr 87',90402,'Nürnberg')
insert into Restaurant values (5,'Hans im Glück',5,'<5,- €',2,2,null,'Königstr 74',90402,'Nürnberg')
insert into Restaurant values (6,'Maredo',1,'<5,-€',2,4,'Montag','Königstr 57-59',90402,'Nürnberg')
insert into Restaurant values (7,'Padelle d`Italia',1,'<5,- €',4,1,null,'Theatergasse 17',90402,'Nürnberg')
insert into Restaurant values (8,'Döneria',4,'<5,- €',1,4,null,'Königstr 69',90402,'Nürnberg')
insert into Restaurant values (9,'Ni Hao',2,'<10,-',3,3,null,'Vordere Sterngasse 18', 90402, 'Nürnberg')
insert into Restaurant values (10,'Cannabis Social Club Nürnberg i.G.',null,'?',3,1,null,'Vordere Sterngasse 15', 90402, 'Nürnberg')

update Restaurant set Küchenart=6 where ID=10
select * from Restaurant

create table Kontakt (nr integer primary key,Kontaktdaten varchar(50), Kontaktart char(3),R_ID integer,
foreign key (Kontaktart) references Kontakt_Art(K_Art),
foreign key (R_ID) references Restaurant (ID));

insert into Kontakt values (1,'fraenkness.de','URL',1)
insert into Kontakt values (2,'091124029955','T',1)
insert into Kontakt values (3,'rilh.de','URL',2)
insert into Kontakt values (4,'09112342658','T',2)
insert into Kontakt values (5,'mcdonalds.de','URL',3)
insert into Kontakt values (6,'09119928416','T',3)
insert into Kontakt values (7,'restaurant-sangam-nuernberg.de','URL',4)
insert into Kontakt values (8,'09112349417','T',4)
insert into Kontakt values (9,'hansimglueck-buergergrill.de','URL',5)
insert into Kontakt values (10,'091199283661','T',5)
insert into Kontakt values (11,'maredo.de','URL',6)
insert into Kontakt values (12,'0911243298','T',6)
insert into Kontakt values (13,'padelle.de','URL',7)
insert into Kontakt values (14,'09112742130','T',7)
insert into Kontakt values (15,'0911 2388683','T',9)
insert into Kontakt values (16,'cscnbg.de','URL',10)
--insert into Kontakt values (15,'','',)



create table Res_GerKat (ID integer,GK_ID integer, primary key (ID,GK_ID),
foreign key (ID) references  Restaurant (ID),
foreign key (GK_ID) references GerichteKategorie (GK_ID))

insert into Res_GerKat values (1,5)
--insert into Res_GerKat values (1,3)
insert into Res_GerKat values (2,5)
--insert into Res_GerKat values (2,3)
insert into Res_GerKat values (3,3)
insert into Res_GerKat values (4,4)
insert into Res_GerKat values (5,5)
--insert into Res_GerKat values (4,3)
insert into Res_GerKat values (6,3)
insert into Res_GerKat values (7,3)
insert into Res_GerKat values (8,5)
--insert into Res_GerKat values (8,3)
insert into Res_GerKat values (9,5)
--insert into Res_GerKat values (9,3)
--insert into Res_GerKat values ()

select  Name, KA.Bezeichnung 'Küchen Art',GK.GKBezeichnung 'Gerichte Kategorie',
PreiseAb, E.EBezeichnung 'von CDT',B.BBezeichnung Bewertung,Strasse+',  '+Ort Adresse
from Restaurant R, Entfernung E,
Küchenart KA,GerichteKategorie GK,
Bewertung B ,Res_GerKat RGK
where B.B_ID=R.Bewertung 
and E_ID=r.entfernung
and KA_ID=r.Küchenart 
and GK.GK_ID=RGK.GK_ID
and RGK.ID=R.ID

select * from Restaurant
select * from Bewertung
select * from Küchenart
select * from GerichteKategorie
select * from Res_GerKat
select * from Restaurant
