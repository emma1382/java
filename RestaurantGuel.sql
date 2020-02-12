create table ENTFERNUNG
(id integer primary key,
meter integer);

INSERT INTO [dbo].[ENTFERNUNG] ([id], [meter]) VALUES (1, 100)
INSERT INTO [dbo].[ENTFERNUNG] ([id], [meter]) VALUES (2, 200)
INSERT INTO [dbo].[ENTFERNUNG] ([id], [meter]) VALUES (3, 300)
INSERT INTO [dbo].[ENTFERNUNG] ([id], [meter]) VALUES (4, 400)
INSERT INTO [dbo].[ENTFERNUNG] ([id], [meter]) VALUES (5, 500)


create table RESTAURANT 
(id integer primary key, 
name varchar(30), 
strasse varchar (30), 
plz char(5),
ort varchar(20),
telefon varchar(30),
email varchar(30),
url varchar(30),
preiskategorie varchar(10),
ruhetag varchar(15),
vorstellung char(4),
lieferung char(4),
entfernung integer,
foreign key (entfernung) references ENTFERNUNG(id));

exec sp_rename 'RESTAURANT.vorstellung', 'vorbestellung';

INSERT INTO [dbo].[RESTAURANT] ([id], [name], [strasse], [plz], [ort], [telefon], [email], [url], [preiskategorie], [ruhetag], [vorbestellung], [lieferung], [entfernung]) VALUES (1, N'Burgerista Nürnberg', N'Königstr. 55', N'90402', N'Nürnberg', N'069 20231790', N'service@burgerista.com', N'https://www.burgerista.com', N'unter 5 €', NULL, N'ja  ', N'ja  ', 1)
INSERT INTO [dbo].[RESTAURANT] ([id], [name], [strasse], [plz], [ort], [telefon], [email], [url], [preiskategorie], [ruhetag], [vorbestellung], [lieferung], [entfernung]) VALUES (2, N'Döneria', N'Königstr. 69', N'90402', N'Nürnberg', NULL, NULL, NULL, N'unter 5 €', NULL, N'nein', N'nein', 1)
INSERT INTO [dbo].[RESTAURANT] ([id], [name], [strasse], [plz], [ort], [telefon], [email], [url], [preiskategorie], [ruhetag], [vorbestellung], [lieferung], [entfernung]) VALUES (3, N'Istanbul Restaurant', N'Königstr. 60', N'90402', N'Nürnberg', N'0911 41019665', NULL, NULL, N'unter 5 €', NULL, N'ja  ', N'nein', 1)
INSERT INTO [dbo].[RESTAURANT] ([id], [name], [strasse], [plz], [ort], [telefon], [email], [url], [preiskategorie], [ruhetag], [vorbestellung], [lieferung], [entfernung]) VALUES (4, N'Ni Hao', N'Vordere Sterngasse 18', N'90402', N'Nürnberg', N'0911 2388683', NULL, NULL, N'unter 5 €', NULL, N'ja  ', N'nein', 2)
INSERT INTO [dbo].[RESTAURANT] ([id], [name], [strasse], [plz], [ort], [telefon], [email], [url], [preiskategorie], [ruhetag], [vorbestellung], [lieferung], [entfernung]) VALUES (5, N'Sausalitos', N'Färberstr. 10', N'90402', N'Nürnberg', N'0911 2004889', N'nuernberg@sausalitos.de', N'https://www.sausalitos.de', N'unter 10 €', NULL, N'ja  ', N'nein', 4)
INSERT INTO [dbo].[RESTAURANT] ([id], [name], [strasse], [plz], [ort], [telefon], [email], [url], [preiskategorie], [ruhetag], [vorbestellung], [lieferung], [entfernung]) VALUES (6, N'McDonald´s', N'Breite Gasse 6 ', N'90402', N'Nürnberg', N'0911 9928416', N'service@mcdonalds.de', N'https://www.mcdonalds.de', N'unter 5 €', NULL, N'nein', N'nein', 3)
INSERT INTO [dbo].[RESTAURANT] ([id], [name], [strasse], [plz], [ort], [telefon], [email], [url], [preiskategorie], [ruhetag], [vorbestellung], [lieferung], [entfernung]) VALUES (7, N'Padelle d`Italia', N'Theatergasse 17', N'90402', N'Nürnberg', N'0911 2742130', N'info@padelleditalia.de', N'https://www.padelleditalia.de', N'unter 10 €', N'Sonntag', N'ja  ', N'ja  ', 2)
INSERT INTO [dbo].[RESTAURANT] ([id], [name], [strasse], [plz], [ort], [telefon], [email], [url], [preiskategorie], [ruhetag], [vorbestellung], [lieferung], [entfernung]) VALUES (8, N'C´era Una Volta', N'Johannesgasse 51', N'90402', N'Nürnberg', N'0911 24466300', NULL, NULL, N'über 10 €', N'Sonntag', N'ja  ', N'nein', 2)


create table ATTRIBUTTYP
(id integer primary key,
bez varchar(20));

INSERT INTO [dbo].[ATTRIBUTTYP] ([id], [bez]) VALUES (1, N'Region')
INSERT INTO [dbo].[ATTRIBUTTYP] ([id], [bez]) VALUES (2, N'Kost')
INSERT INTO [dbo].[ATTRIBUTTYP] ([id], [bez]) VALUES (3, N'Restaurantart')
INSERT INTO [dbo].[ATTRIBUTTYP] ([id], [bez]) VALUES (4, N'Gericht')
INSERT INTO [dbo].[ATTRIBUTTYP] ([id], [bez]) VALUES (5, N'Getränk')
INSERT INTO [dbo].[ATTRIBUTTYP] ([id], [bez]) VALUES (6, N'Verzehrart')


create table ATTRIBUT
(id integer primary key,
bez varchar(30),
atttyp integer,
foreign key (atttyp) references ATTRIBUTTYP(id));

INSERT INTO [dbo].[ATTRIBUT] ([id], [bez], [atttyp]) VALUES (1, N'italienisch', 1)
INSERT INTO [dbo].[ATTRIBUT] ([id], [bez], [atttyp]) VALUES (2, N'türkisch', 1)
INSERT INTO [dbo].[ATTRIBUT] ([id], [bez], [atttyp]) VALUES (3, N'deutsch', 1)
INSERT INTO [dbo].[ATTRIBUT] ([id], [bez], [atttyp]) VALUES (4, N'asiatisch', 1)
INSERT INTO [dbo].[ATTRIBUT] ([id], [bez], [atttyp]) VALUES (5, N'Bäcker', 3)
INSERT INTO [dbo].[ATTRIBUT] ([id], [bez], [atttyp]) VALUES (6, N'Imbiss', 3)
INSERT INTO [dbo].[ATTRIBUT] ([id], [bez], [atttyp]) VALUES (7, N'vegan', 2)
INSERT INTO [dbo].[ATTRIBUT] ([id], [bez], [atttyp]) VALUES (8, N'vegetarisch', 2)
INSERT INTO [dbo].[ATTRIBUT] ([id], [bez], [atttyp]) VALUES (9, N'Burger', 4)
INSERT INTO [dbo].[ATTRIBUT] ([id], [bez], [atttyp]) VALUES (10, N'Fastfood', 2)
INSERT INTO [dbo].[ATTRIBUT] ([id], [bez], [atttyp]) VALUES (11, N'Biergarten', 3)
INSERT INTO [dbo].[ATTRIBUT] ([id], [bez], [atttyp]) VALUES (12, N'Pommes', 4)
INSERT INTO [dbo].[ATTRIBUT] ([id], [bez], [atttyp]) VALUES (13, N'Fallafel', 4)
INSERT INTO [dbo].[ATTRIBUT] ([id], [bez], [atttyp]) VALUES (14, N'Bier', 5)
INSERT INTO [dbo].[ATTRIBUT] ([id], [bez], [atttyp]) VALUES (15, N'to go', 6)
INSERT INTO [dbo].[ATTRIBUT] ([id], [bez], [atttyp]) VALUES (16, N'drinnen essen', 6)



create table RES_ATT 
(res_id integer,
att_id integer,
primary key (res_id, att_id),
foreign key (res_id) references RESTAURANT(id),
foreign key (att_id) references ATTRIBUT(id));

INSERT INTO [dbo].[RES_ATT] ([res_id], [att_id]) VALUES (1, 9)
INSERT INTO [dbo].[RES_ATT] ([res_id], [att_id]) VALUES (1, 10)
INSERT INTO [dbo].[RES_ATT] ([res_id], [att_id]) VALUES (1, 12)
INSERT INTO [dbo].[RES_ATT] ([res_id], [att_id]) VALUES (1, 14)
INSERT INTO [dbo].[RES_ATT] ([res_id], [att_id]) VALUES (1, 15)
INSERT INTO [dbo].[RES_ATT] ([res_id], [att_id]) VALUES (1, 16)
INSERT INTO [dbo].[RES_ATT] ([res_id], [att_id]) VALUES (2, 2)
INSERT INTO [dbo].[RES_ATT] ([res_id], [att_id]) VALUES (2, 6)
INSERT INTO [dbo].[RES_ATT] ([res_id], [att_id]) VALUES (2, 8)
INSERT INTO [dbo].[RES_ATT] ([res_id], [att_id]) VALUES (2, 10)
INSERT INTO [dbo].[RES_ATT] ([res_id], [att_id]) VALUES (2, 12)
INSERT INTO [dbo].[RES_ATT] ([res_id], [att_id]) VALUES (2, 13)
INSERT INTO [dbo].[RES_ATT] ([res_id], [att_id]) VALUES (2, 14)
INSERT INTO [dbo].[RES_ATT] ([res_id], [att_id]) VALUES (2, 15)
INSERT INTO [dbo].[RES_ATT] ([res_id], [att_id]) VALUES (3, 2)
INSERT INTO [dbo].[RES_ATT] ([res_id], [att_id]) VALUES (3, 8)
INSERT INTO [dbo].[RES_ATT] ([res_id], [att_id]) VALUES (3, 10)
INSERT INTO [dbo].[RES_ATT] ([res_id], [att_id]) VALUES (3, 11)
INSERT INTO [dbo].[RES_ATT] ([res_id], [att_id]) VALUES (3, 12)
INSERT INTO [dbo].[RES_ATT] ([res_id], [att_id]) VALUES (3, 14)
INSERT INTO [dbo].[RES_ATT] ([res_id], [att_id]) VALUES (3, 15)
INSERT INTO [dbo].[RES_ATT] ([res_id], [att_id]) VALUES (3, 16)
INSERT INTO [dbo].[RES_ATT] ([res_id], [att_id]) VALUES (4, 4)
INSERT INTO [dbo].[RES_ATT] ([res_id], [att_id]) VALUES (4, 7)
INSERT INTO [dbo].[RES_ATT] ([res_id], [att_id]) VALUES (4, 8)
INSERT INTO [dbo].[RES_ATT] ([res_id], [att_id]) VALUES (4, 15)
INSERT INTO [dbo].[RES_ATT] ([res_id], [att_id]) VALUES (4, 16)
INSERT INTO [dbo].[RES_ATT] ([res_id], [att_id]) VALUES (5, 7)
INSERT INTO [dbo].[RES_ATT] ([res_id], [att_id]) VALUES (5, 8)
INSERT INTO [dbo].[RES_ATT] ([res_id], [att_id]) VALUES (5, 9)
INSERT INTO [dbo].[RES_ATT] ([res_id], [att_id]) VALUES (5, 11)
INSERT INTO [dbo].[RES_ATT] ([res_id], [att_id]) VALUES (5, 12)
INSERT INTO [dbo].[RES_ATT] ([res_id], [att_id]) VALUES (5, 13)
INSERT INTO [dbo].[RES_ATT] ([res_id], [att_id]) VALUES (5, 14)
INSERT INTO [dbo].[RES_ATT] ([res_id], [att_id]) VALUES (5, 16)
INSERT INTO [dbo].[RES_ATT] ([res_id], [att_id]) VALUES (6, 8)
INSERT INTO [dbo].[RES_ATT] ([res_id], [att_id]) VALUES (6, 9)
INSERT INTO [dbo].[RES_ATT] ([res_id], [att_id]) VALUES (6, 10)
INSERT INTO [dbo].[RES_ATT] ([res_id], [att_id]) VALUES (6, 12)
INSERT INTO [dbo].[RES_ATT] ([res_id], [att_id]) VALUES (6, 15)
INSERT INTO [dbo].[RES_ATT] ([res_id], [att_id]) VALUES (6, 16)
INSERT INTO [dbo].[RES_ATT] ([res_id], [att_id]) VALUES (7, 1)
INSERT INTO [dbo].[RES_ATT] ([res_id], [att_id]) VALUES (7, 8)
INSERT INTO [dbo].[RES_ATT] ([res_id], [att_id]) VALUES (7, 12)
INSERT INTO [dbo].[RES_ATT] ([res_id], [att_id]) VALUES (7, 13)
INSERT INTO [dbo].[RES_ATT] ([res_id], [att_id]) VALUES (7, 14)
INSERT INTO [dbo].[RES_ATT] ([res_id], [att_id]) VALUES (7, 16)
INSERT INTO [dbo].[RES_ATT] ([res_id], [att_id]) VALUES (8, 1)
INSERT INTO [dbo].[RES_ATT] ([res_id], [att_id]) VALUES (8, 7)
INSERT INTO [dbo].[RES_ATT] ([res_id], [att_id]) VALUES (8, 8)
INSERT INTO [dbo].[RES_ATT] ([res_id], [att_id]) VALUES (8, 11)
INSERT INTO [dbo].[RES_ATT] ([res_id], [att_id]) VALUES (8, 12)
INSERT INTO [dbo].[RES_ATT] ([res_id], [att_id]) VALUES (8, 14)
INSERT INTO [dbo].[RES_ATT] ([res_id], [att_id]) VALUES (8, 15)
INSERT INTO [dbo].[RES_ATT] ([res_id], [att_id]) VALUES (8, 16)


 select * from ENTFERNUNG

 select * from RESTAURANT

 create view Unter5Euro as
 select name, strasse, plz, ort, isnull(telefon, 'keine Tel-Nr.') telefon, 
 isnull(url, 'keine Website') website, meter, preiskategorie, vorbestellung, lieferung
 from RESTAURANT
 join RES_ATT on res_id=RESTAURANT.id
 join ATTRIBUT on att_id=ATTRIBUT.id
 join ENTFERNUNG on ENTFERNUNG.id=entfernung
 where preiskategorie = 'unter 5 €'
 group by name, preiskategorie, strasse, plz, ort, telefon, meter, url, vorbestellung, lieferung

 select * from Unter5Euro


 create view Unter10Euro as
 select name, strasse, plz, ort, isnull(telefon, 'keine Tel-Nr.') telefon, 
 isnull(url, 'keine Website') website, meter, preiskategorie, vorbestellung, lieferung
 from RESTAURANT
 join RES_ATT on res_id=RESTAURANT.id
 join ATTRIBUT on att_id=ATTRIBUT.id
 join ENTFERNUNG on ENTFERNUNG.id=entfernung
 where preiskategorie in ('unter 5 €', 'unter 10 €')
 group by name, preiskategorie, strasse, plz, ort, telefon, meter, url, vorbestellung, lieferung

 select * from Unter10Euro

 create view ital_Lokale as
 select name, strasse, plz, ort, isnull(telefon, 'keine Tel-Nr.') telefon, 
 isnull(url, 'keine Website') website, meter, preiskategorie, vorbestellung, lieferung
 from RESTAURANT
 join RES_ATT on res_id=RESTAURANT.id
 join ATTRIBUT on att_id=ATTRIBUT.id
 join ENTFERNUNG on ENTFERNUNG.id=entfernung
 where att_id = 1
 group by name, preiskategorie, strasse, plz, ort, telefon, meter, url, vorbestellung, lieferung

 select * from ital_Lokale

 create view asia_Lokale as
 select name, strasse, plz, ort, isnull(telefon, 'keine Tel-Nr.') telefon, 
 isnull(url, 'keine Website') website, meter, preiskategorie, vorbestellung, lieferung
 from RESTAURANT
 join RES_ATT on res_id=RESTAURANT.id
 join ATTRIBUT on att_id=ATTRIBUT.id
 join ENTFERNUNG on ENTFERNUNG.id=entfernung
 where att_id = 4
 group by name, preiskategorie, strasse, plz, ort, telefon, meter, url, vorbestellung, lieferung

 select * from asia_Lokale

 create view fastfood as
 select name, strasse, plz, ort, isnull(telefon, 'keine Tel-Nr.') telefon, 
 isnull(url, 'keine Website') website, meter, preiskategorie, vorbestellung, lieferung
 from RESTAURANT
 join RES_ATT on res_id=RESTAURANT.id
 join ATTRIBUT on att_id=ATTRIBUT.id
 join ENTFERNUNG on ENTFERNUNG.id=entfernung
 where att_id = 10
 group by name, preiskategorie, strasse, plz, ort, telefon, meter, url, vorbestellung, lieferung

 select * from ATTRIBUT

 create view togo as
 select name, strasse, plz, ort, isnull(telefon, 'keine Tel-Nr.') telefon, 
 isnull(url, 'keine Website') website, meter, preiskategorie, vorbestellung, lieferung
 from RESTAURANT
 join RES_ATT on res_id=RESTAURANT.id
 join ATTRIBUT on att_id=ATTRIBUT.id
 join ENTFERNUNG on ENTFERNUNG.id=entfernung
 where att_id = 15
 group by name, preiskategorie, strasse, plz, ort, telefon, meter, url, vorbestellung, lieferung


 create view vegan as
 select name, strasse, plz, ort, isnull(telefon, 'keine Tel-Nr.') telefon, 
 isnull(url, 'keine Website') website, meter, preiskategorie, vorbestellung, lieferung
 from RESTAURANT
 join RES_ATT on res_id=RESTAURANT.id
 join ATTRIBUT on att_id=ATTRIBUT.id
 join ENTFERNUNG on ENTFERNUNG.id=entfernung
 where att_id = 7
 group by name, preiskategorie, strasse, plz, ort, telefon, meter, url, vorbestellung, lieferung


 create view vegetarisch as
 select name, strasse, plz, ort, isnull(telefon, 'keine Tel-Nr.') telefon, 
 isnull(url, 'keine Website') website, meter, preiskategorie, vorbestellung, lieferung
 from RESTAURANT
 join RES_ATT on res_id=RESTAURANT.id
 join ATTRIBUT on att_id=ATTRIBUT.id
 join ENTFERNUNG on ENTFERNUNG.id=entfernung
 where att_id = 8
 group by name, preiskategorie, strasse, plz, ort, telefon, meter, url, vorbestellung, lieferung

 select * from vegetarisch