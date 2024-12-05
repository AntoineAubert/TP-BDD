-- I- Créer la Base
-- creation de la table Produits et ajout de cle primaire 
CREATE TABLE PRODUITS(
	CODE_FABRICANT CHAR(3) NOT NULL,
	CODE_PRODUIT CHAR(5) NOT NULL,
	DESCRIPTIO varchar(20) NOT NULL,
    PRIX decimal(8,2) NOT NULL,
	QUANTITE_EN_STOCK decimal(8) NOT NULL,
	PRIMARY KEY (CODE_FABRICANT, CODE_PRODUIT)
);

-- Creation de la table Agences et ajout de cle primaire
CREATE TABLE AGENCES(
    AGENCE decimal(4) NOT NULL,
    VILLE VARCHAR(15) NOT NULL,
    REGION VARCHAR(10) NOT NULL,
    CHEF decimal(4),
    OBJECTIF decimal(8,2),
    VENTES decimal(8,2) NOT NULL,
    PRIMARY KEY (AGENCE)
);

-- Creation de la table Vendeurs et ajout de cle primaire
CREATE TABLE VENDEURS(
	NUM_SALARIE decimal(4) NOT NULL,
    NOM VARCHAR(15) NOT NULL,
    AGE decimal(3),
	NUM_AGENCE decimal(4),
    TITRE VARCHAR(50),
	DATE_EMBAUCHE DATE NOT NULL,
    MANAGER decimal(4),
    QUOTA decimal(8,2),
    VENTES decimal(8,2) NOT NULL,
	PRIMARY KEY (NUM_SALARIE)
);

-- Creation de la table Clients et ajout de cle primaire
CREATE TABLE CLIENTS(
	NUM_CLIENT decimal(6) NOT NULL,
    SOCIETE VARCHAR(20) NOT NULL,
    CLIENT_VENDEUR decimal(4),
	LIMITE_CREDIT decimal(8,2),
	PRIMARY KEY (NUM_CLIENT)
);

-- creation de la table commandes et ajout de cle primaire
CREATE TABLE COMMANDES(
	NUM_COMMANDE decimal(8) NOT NULL,
	DATE_COMMANDE DATE NOT NULL,
    CLIEN decimal(6) NOT NULL,
    VENDEUR decimal(4),
    FABRICANT CHAR(3) NOT NULL,
    PRODUIT CHAR(5) NOT NULL,
    QUANTITE decimal(6) NOT NULL,
    MONTANT decimal(8,2) NOT NULL,
	PRIMARY KEY (NUM_COMMANDE)
);

-- Apres la creations des differentes tables on commence l'insertion
-- insertion des valeurs dans la table produits 
insert into PRODUITS values('ACI','41001','Embout taille 1',55,277);
insert into PRODUITS values('ACI','41002','Embout taille 2',76,167);
insert into PRODUITS values('ACI','41003','Embout taille 3',107,207);
insert into PRODUITS values('ACI','41004','Embout taille 4',117,139);
insert into PRODUITS values('ACI','4100X','Pied à coulisse',25,37);
insert into PRODUITS values('ACI','4100Y','Groupe électrogène',2750,25);
insert into PRODUITS values('ACI','4100Z','Pompe',2500,28);
insert into PRODUITS values('BIC','41003','Poignée',652,3);
insert into PRODUITS values('BIC','41089','Pince',225,78);
insert into PRODUITS values('BIC','41672','Plaque',180,0);
insert into PRODUITS values('FEA','112','Boîtier',148,115);
insert into PRODUITS values('FEA','114','Etabli',243,15);
insert into PRODUITS values('IMM','773C','Support 150 kg',975,28);
insert into PRODUITS values('IMM','775C','Support 250 kg',1425,5);
insert into PRODUITS values('IMM','779C','Support 500 kg',1875,9);
insert into PRODUITS values('IMM','887H','Support',54,223);
insert into PRODUITS values('IMM','887P','Anneau de blocage',250,24);
insert into PRODUITS values('IMM','887X','Vilebrequin',475,32);
insert into PRODUITS values('QSA','XK47','Réducteur',355,38);
insert into PRODUITS values('QSA','XK48','Réducteur',134,203);
insert into PRODUITS values('QSA','XK48A','Réducteur',177,37);
insert into PRODUITS values('REI','2A44G','Goupille',350,14);
insert into PRODUITS values('REI','2A44L','Volet gauche',4500,12);
insert into PRODUITS values('REI','2A44R','Volet droit',4500,12);
insert into PRODUITS values('REI','2A45C','Crémaillère',79,210);

-- insertion des valeurs dans la table Agences
insert into AGENCES values(11,'Lyon','Est',106,575000,692637);
insert into AGENCES values(12,'Marseille','Est',104,800000,735042);
insert into AGENCES values(13,'Grenoble','Est',105,350000,367911);
insert into AGENCES values(21,'Toulouse','Ouest',108,725000,835915);
insert into AGENCES values(22,'Bordeaux','Ouest',108,300000,186042);

-- insertion des valeurs dans la table Vendeurs 
insert into VENDEURS values(101,'Daniel Robert',45,12,'Vendeur',20/10/1986,104,300000,305673);
insert into VENDEURS values(102,'Suzie Dupont',48,21,'Vendeur',10/12/1986,108,350000,474050);
insert into VENDEURS values(103,'Paul Croix',29,12,'Vendeur',01/01/1987,104,275000,286775);
insert into VENDEURS values(104,'Boris Dupond',33,12,'Chef des ventes',19/05/1987,106,200000,142594);
insert into VENDEURS values(105,'Bill Adam',37,13,'Vendeur',12/02/1988,104,350000,367911);
insert into VENDEURS values(106,'Samuel Clair',52,11,'Directeur commercial',14/06/1988,null,275000,299912);
insert into VENDEURS values(107,'Nancy Angelli',49,22,'Vendeur',14/11/1988,108,300000,186042);
insert into VENDEURS values(108,'Luc Fignon',62,21,'Chef des ventes',12/10/1989,106,350000,361865);
insert into VENDEURS values(109,'Marie Jonas',31,11,'Vendeur',12/10/1989,106,300000,392725);
insert into VENDEURS values(110,'Thomas Sueur',41,null,'Vendeur',13/01/1990,null,101,75985);

-- insertion des valeurs dans la table Clients
insert into CLIENTS values(2101,'Jean Martin',106,65000);
insert into CLIENTS values(2102,'Firmin',101,65000);
insert into CLIENTS values(2103,'Achats Groupés',105,50000);
insert into CLIENTS values(2105,'AAA Investissements',101,45000);
insert into CLIENTS values(2106,'Fred Louis SA',102,65000);
insert into CLIENTS values(2107,'As International',110,35000);
insert into CLIENTS values(2108,'Hulot & Tati',109,55000);
insert into CLIENTS values(2109,'Chaîne Associés',103,25000);
insert into CLIENTS values(2111,'JCP SARL',103,50000);
insert into CLIENTS values(2112,'Zetagamma',108,50000);
insert into CLIENTS values(2113,'Ivan & Schmidt',104,20000);
insert into CLIENTS values(2114,'Orion SA',102,20000);
insert into CLIENTS values(2115,'Simon SA',101,20000);
insert into CLIENTS values(2117,'J.P. Sinclair',106,35000);
insert into CLIENTS values(2118,'Midi Systèmes',108,60000);
insert into CLIENTS values(2119,'Salomon SA',109,25000);
insert into CLIENTS values(2120,'Ric Entreprises',102,50000);
insert into CLIENTS values(2121,'QMA Associés',103,45000);
insert into CLIENTS values(2122,'Trois Jurassiens',105,30000);
insert into CLIENTS values(2123,'Charles & Fils',102,40000);
insert into CLIENTS values(2124,'Pierre Legrand',107,40000);

-- insertion des valeurs dans la tables commandes
insert into COMMANDES values(113024,01/20/1990,2114,108,'QSA','XK47',20,7100);
insert into COMMANDES values(113027,01/22/1990,2103,105,'ACI','41002',54,4104);
insert into COMMANDES values(113034,01/29/1990,2107,110,'REI','2A45C',8,632);
insert into COMMANDES values(113036,01/30/1990,2107,110,'ACI','4100Z',9,22500);
insert into COMMANDES values(113042,02/02/1990,2113,101,'REI','2A44R',5,22500);
insert into COMMANDES values(113045,02/02/1990,2112,108,'REI','2A44R',10,45000);
insert into COMMANDES values(113048,02/10/1990,2120,102,'IMM','779C',2,3750);
insert into COMMANDES values(113049,02/10/1990,2118,108,'QSA','XK47',2,776);
insert into COMMANDES values(113051,02/10/1990,2118,108,'QSA','XK47',4,1420);
insert into COMMANDES values(113055,02/15/1990,2108,101,'ACI','4100X',6,150);
insert into COMMANDES values(113057,02/18/1990,2111,103,'ACI','4100X',24,600);
insert into COMMANDES values(113058,02/23/1990,2108,109,'FEA','112',10,1480);
insert into COMMANDES values(113062,02/24/1990,2124,107,'FEA','114',10,2430);
insert into COMMANDES values(113065,02/27/1990,2106,102,'QSA','XK47',6,2130);
insert into COMMANDES values(113069,03/02/1990,2109,107,'IMM','775C',22,31350);

-- Implementation des cles etrangeres 
ALTER TABLE VENDEURS ADD CONSTRAINT TRAVAILLEDANS FOREIGN KEY (NUM_AGENCE) REFERENCES AGENCES(AGENCE) ON DELETE SET NULL;
ALTER TABLE AGENCES ADD CONSTRAINT AMANAGER FOREIGN KEY (CHEF) REFERENCES VENDEURS(NUM_SALARIE) ON DELETE SET NULL;
ALTER TABLE CLIENTS ADD CONSTRAINT AVENDEUR FOREIGN KEY (CLIENT_VENDEUR) REFERENCES VENDEURS(NUM_SALARIE) ON DELETE SET NULL;
ALTER TABLE COMMANDES ADD CONSTRAINT PASSEEPAR FOREIGN KEY (CLIEN) REFERENCES CLIENTS(NUM_CLIENT) ON DELETE CASCADE;
ALTER TABLE COMMANDES ADD CONSTRAINT PRISEPAR FOREIGN KEY (VENDEUR) REFERENCES VENDEURS(NUM_SALARIE) ON DELETE SET NULL;
ALTER TABLE COMMANDES ADD CONSTRAINT ESTPOUR FOREIGN KEY (FABRICANT,PRODUIT) REFERENCES PRODUITS(CODE_FABRICANT,CODE_PRODUIT);

-- II- Requêtes SQL

-- 1-Listez les vendeurs dont le quota correspond à moins de 10 % de l’objectif global de ventes de la société.
SELECT NOM, QUOTA 
FROM VENDEURS 
WHERE QUOTA < (0.1 * (SELECT SUM(OBJECTIF) FROM AGENCES));
-- 2-Listez les agences pour lesquelles l’objectif des ventes de l’agence est supérieur à la somme des quotas de chacun des vendeurs.
SELECT NOM, QUOTA 
FROM VENDEURS 
WHERE QUOTA < (0.1 * (SELECT SUM(OBJECTIF) FROM AGENCES));
-- 3-Listez les vendeurs dont les quotas sont égaux ou supérieurs à l’objectif de l’agence commerciale de Grenoble.
SELECT NOM, QUOTA 
FROM VENDEURS 
WHERE QUOTA >= (SELECT OBJECTIF FROM AGENCES WHERE VILLE = 'Grenoble');
-- 4-Listez tous les clients servis par Bill Adam.
SELECT * 
FROM CLIENTS 
WHERE CLIENT_VENDEUR = (SELECT NUM_SALARIE FROM VENDEURS WHERE NOM = 'Bill Adam');
-- 5-Listez tous les produits dont le fabricant est ACI et pour lesquels la quantité en stock est supérieure à la quantité en stock du produit ACI-41004.
SELECT * 
FROM PRODUITS 
WHERE CODE_FABRICANT = 'ACI' 
  AND QUANTITE_EN_STOCK > (
    SELECT QUANTITE_EN_STOCK 
    FROM PRODUITS 
    WHERE CODE_FABRICANT = 'ACI' AND CODE_PRODUIT = '41004'
);
-- 6-Listez les vendeurs qui travaillent dans les agences qui ont dépassé leur objectif.
SELECT NOM 
FROM VENDEURS 
WHERE NUM_AGENCE IN (
    SELECT AGENCE 
    FROM AGENCES 
    WHERE VENTES > OBJECTIF
);
-- 7-Listez les vendeurs qui ne travaillent pas dans des agences dont le chef est Luc Fignon (l’employé N°108).
SELECT NOM 
FROM VENDEURS 
WHERE NUM_AGENCE NOT IN (
    SELECT AGENCE 
    FROM AGENCES 
    WHERE CHEF = 108
);
-- 8-Listez tous les clients ayant commandé des produits ACI (fabricant ACI, numéros de produits commençant par ´ 4100 ‘) entre janvier et juin 1990.
SELECT DISTINCT CLIENTS.* 
FROM CLIENTS 
JOIN COMMANDES ON CLIENTS.NUM_CLIENT = COMMANDES.CLIEN
WHERE FABRICANT = 'ACI' 
  AND PRODUIT LIKE '4100%' 
  AND DATE_COMMANDE BETWEEN '1990-01-01' AND '1990-06-30';
-- 9-Listez les produits pour lesquels il existe au moins une commande dans la table COMMANDES (a) qui correspond au produit en question et (b) qui se monte à au moins 25 000 €.
SELECT DISTINCT PRODUITS.* 
FROM PRODUITS 
WHERE EXISTS (
    SELECT 1 
    FROM COMMANDES 
    WHERE PRODUITS.CODE_FABRICANT = COMMANDES.FABRICANT 
      AND PRODUITS.CODE_PRODUIT = COMMANDES.PRODUIT 
      AND MONTANT >= 25000
);
-- 10-Listez les produits pour lesquels une commande de 25 000 € ou plus a été passée.
SELECT CLIENTS.* 
FROM CLIENTS 
WHERE CLIENT_VENDEUR = (SELECT NUM_SALARIE FROM VENDEURS WHERE NOM = 'Suzie Dupont') 
  AND NUM_CLIENT NOT IN (
    SELECT CLIEN 
    FROM COMMANDES 
    WHERE MONTANT > 3000
);
-- 11-Listez tous les clients de Suzie Dupont qui n’ont passé aucune commande supérieure à 3 000 €.
SELECT DISTINCT VENDEURS.NOM 
FROM VENDEURS 
JOIN COMMANDES ON VENDEURS.NUM_SALARIE = COMMANDES.VENDEUR
WHERE MONTANT > (0.1 * VENDEURS.QUOTA);
-- 12-Listez les agences où travaillent des vendeurs dont le quota est supérieur à 55 % de l’objectif de l’agence.
SELECT DISTINCT VILLE 
FROM AGENCES 
WHERE AGENCE IN (
    SELECT NUM_AGENCE 
    FROM VENDEURS 
    WHERE QUOTA > 0.55 * (SELECT OBJECTIF FROM AGENCES WHERE AGENCE = VENDEURS.NUM_AGENCE)
);
-- 13-Listez les vendeurs qui ont enregistré une commande représentant plus de 10 % de leur quota.
SELECT DISTINCT VENDEURS.NOM 
FROM VENDEURS 
JOIN COMMANDES ON VENDEURS.NUM_SALARIE = COMMANDES.VENDEUR
WHERE MONTANT > (0.1 * VENDEURS.QUOTA);
-- 14-Listez les agences et leurs objectifs, pour lesquelles tous les vendeurs ont réalisé des ventes excédant 50 % de l’objectif de l’agence.
SELECT VILLE, OBJECTIF 
FROM AGENCES 
WHERE NOT EXISTS (
    SELECT 1 
    FROM VENDEURS 
    WHERE NUM_AGENCE = AGENCES.AGENCE 
      AND VENTES <= 0.5 * AGENCES.OBJECTIF
);
-- 15-Listez les noms et les âges des vendeurs qui travaillent dans les agences de la région Ouest.
SELECT VENDEURS.NOM, VENDEURS.AGE 
FROM VENDEURS 
JOIN AGENCES ON VENDEURS.NUM_AGENCE = AGENCES.AGENCE 
WHERE REGION = 'Ouest';
-- 16-Listez les noms et les âges des vendeurs qui travaillent dans les agences de la région Ouest.
SELECT NOM, AGE 
FROM VENDEURS 
WHERE QUOTA > (SELECT AVG(QUOTA) FROM VENDEURS);
-- 17-Listez les noms et les âges des vendeurs qui sont au-dessus des quotas moyens.
SELECT DISTINCT CLIENTS.* 
FROM CLIENTS 
JOIN VENDEURS ON CLIENTS.CLIENT_VENDEUR = VENDEURS.NUM_SALARIE 
JOIN AGENCES ON VENDEURS.NUM_AGENCE = AGENCES.AGENCE 
WHERE REGION = 'Est';
-- 18-Listez les clients pour lesquels les vendeurs travaillent pour des agences de la région Est.
SELECT VILLE, OBJECTIF 
FROM AGENCES 
WHERE OBJECTIF < (SELECT AVG(OBJECTIF) FROM AGENCES);
-- 19-Listez les agences commerciales qui se trouvent en dessous de l’objectif moyen.
SELECT VILLE, OBJECTIF 
FROM AGENCES 
WHERE OBJECTIF > (
    SELECT COALESCE(SUM(QUOTA), 0) 
    FROM VENDEURS 
    WHERE NUM_AGENCE = AGENCES.AGENCE
);
-- 20-Listez toutes les agences dont les objectifs dépassent la somme des quotas des vendeurs qui y travaillent :
SELECT DISTINCT CHEF.NOM, CHEF.AGE 
FROM VENDEURS AS CHEF 
JOIN AGENCES ON CHEF.NUM_SALARIE = AGENCES.CHEF 
JOIN VENDEURS AS VENDEUR ON VENDEUR.NUM_AGENCE = AGENCES.AGENCE 
WHERE CHEF.AGE > 40 
  AND VENDEUR.VENTES > VENDEUR.QUOTA;
-- 21-Listez les chefs âgés de plus de 40 ans qui dirigent un vendeur dont les ventes sont au dessus de son quota. 
SELECT DISTINCT CHEF.NOM, CHEF.AGE 
FROM VENDEURS AS CHEF 
JOIN AGENCES ON CHEF.NUM_SALARIE = AGENCES.CHEF 
JOIN VENDEURS AS VENDEUR ON VENDEUR.NUM_AGENCE != AGENCES.AGENCE 
WHERE CHEF.AGE > 40 
  AND VENDEUR.VENTES > VENDEUR.QUOTA;
-- 22-Listez les chefs âgés de plus de 40 ans qui dirigent un vendeur dont les ventes sont au dessus de son quota et qui ne travaillent pas dans la même agence que leur chef.
SELECT DISTINCT VENDEURS.NOM 
FROM VENDEURS 
JOIN COMMANDES ON VENDEURS.NUM_SALARIE = COMMANDES.VENDEUR 
WHERE COMMANDES.FABRICANT = 'ACI' 
  AND MONTANT > (SELECT AVG(MONTANT) FROM COMMANDES);
-- 23-Listez les vendeurs pour lesquels le montant par commande en ce qui concerne les produits fabriqués par ACI est supérieur au montant moyen des commandes.
SELECT DISTINCT VENDEURS.NOM, VENDEURS.NUM_SALARIE
FROM VENDEURS
JOIN COMMANDES ON VENDEURS.NUM_SALARIE = COMMANDES.VENDEUR
WHERE COMMANDES.FABRICANT = 'ACI'
  AND COMMANDES.MONTANT > (
      SELECT AVG(MONTANT) 
      FROM COMMANDES
  );