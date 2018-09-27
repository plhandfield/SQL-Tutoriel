CREATE DATABASE `erp`;
USE `erp`;

CREATE TABLE `t_client` (
  `client_id` int(11) NOT NULL,
  `nom` varchar(45) DEFAULT NULL,
  `ville` varchar(45) DEFAULT NULL,
  `telephone` varchar(45) DEFAULT NULL,
  `type_client` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`client_id`)
);

INSERT INTO 
    `t_client` 
VALUES 
    (1,'Bob','Sherbrooke','(514) 666-6666','gold'),
    (2,'Denis','Sherbrooke','(819) 777-7777','gold'),
    (3,'Ben','Montréal','(819) 888-8888',NULL),
    (4,'Julie','Sherbrooke','(514) 999-9999','silver'),
    (5,'Carl  ','Montréal','(514) 555-5555','silver');

CREATE TABLE 
    `t_vente` (
  `vente_id` int(11) NOT NULL,
  `date_heure` datetime DEFAULT NULL,
  `article_id` varchar(45) DEFAULT NULL,
  `nom_article` varchar(100) DEFAULT NULL,
  `est_taxable` int(11) DEFAULT NULL,
  `quantite` int(11) DEFAULT NULL,
  `prix_unitaire` decimal(10,0) DEFAULT NULL,
  `client_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`vente_id`),
  KEY `fk_client_achat_idx` (`client_id`),
  CONSTRAINT `fk_client_achat` FOREIGN KEY (`client_id`) REFERENCES `t_client` (`client_id`)
);

INSERT INTO 
    `t_vente` 
VALUES 
    (1,'2018-09-20 09:23:00','10','pommes',0,4,2,1),
    (2,'2018-09-20 09:23:00','20','oranges',0,2,3,1),
    (3,'2018-09-20 14:52:00','30','chocolat',1,1,4,2),
    (4,'2018-09-20 20:15:00','10','pommes',0,3,2,3),
    (5,'2018-09-21 20:05:00','20','oranges',0,6,3,3),
    (6,'2018-09-22 20:15:00','30','chocolat',1,2,4,2),
    (7,'2018-09-23 11:55:00','10','pommes',0,9,2,4),
    (8,'2018-09-23 11:55:00','20','oranges',0,5,3,4);

