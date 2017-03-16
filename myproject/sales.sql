
CREATE DATABASE /*!32312 IF NOT EXISTS*/ `datagenerator` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `datagenerator`;



DROP TABLE IF EXISTS `customer_US`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customer_US` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customerid` varchar(10) DEFAULT NULL,
  `postalcode` int(11) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `customername` varchar(100) DEFAULT NULL,
  `countrycode` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `customerid_UNIQUE` (`customerid`)
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

DROP TABLE IF EXISTS `customer_DE`;

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customer_DE` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customerid` varchar(10) DEFAULT NULL,
  `postalcode` int(11) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `customername` varchar(100) DEFAULT NULL,
  `countrycode` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `customerid_UNIQUE` (`customerid`)
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `customer_us` WRITE;
/*!40000 ALTER TABLE `customer_US` DISABLE KEYS */;
INSERT INTO `customer_US` VALUES (1,'0000001000',80111,'DENVER','ROCKY MOUNTAIN BIKES','US00'),(2,'0000002000',10014,'NEW YORK CITY','BIG APPLE BIKES','US00'),(3,'0000003000',19073,'PHILADELPHIA','PHILLY BIKES','US00'),(4,'0000004000',30319,'ATLANTA','PEACHTREE BIKES','US00'),(5,'0000005000',18033,'BOSTON','BEANTOWN BIKES','US00'),(6,'0000006000',60515,'CHICAGO','WINDY CITY BIKES','US00'),(7,'0000007000',49504,'GRAND RAPIDS','FURNITURE CITY BIKES','US00'),(8,'0000008000',48076,'DETROIT','MOTOWN BIKES','US00'),(9,'0000009000',92612,'IRVINE','SO CAL BIKES','US00'),(10,'0000010000',94304,'PALO','ALTO	SILICON VALLEY BIKES','US00'),(11,'0000011000',20004,'WASHINGTON DC','DC BIKES','US00'),(12,'0000012000',98004,'SEATTLE','NORTHWEST BIKES','US00'),(13,'0000025011',32804,'ORLANDO','THE BIKE ZONE','US00');
/*!40000 ALTER TABLE `customer_US` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `customer_de` WRITE;
/*!40000 ALTER TABLE `customer_de` DISABLE KEYS */;
INSERT INTO `customer_de` VALUES (1,'0000013000',60549,'FRANKFURT','AIRPORT BIKES','DE00'),(2,'0000014000',22760,'HAMBURG','ALSTER CYCLING','DE00'),(3,'0000015000',92275,'MUNCHEN','BAVARIA BIKES','DE00'),(4,'0000016000',16341,'BERLIN','CAPITAL BIKES','DE00'),(5,'0000017000',30627,'HANNOVER','CRUISER BIKES','DE00'),(6,'0000018000',4227,'LEIPZIG','DRAHTESEL','DE00'),(7,'0000019000',44784,'BOCHUM','FAHRPOTT','DE00'),(8,'0000020000',69115,'HEIDELBERG','NECKARAD','DE00'),(9,'0000021000',17389,'ANKLAM','OSTSEERAD','DE00'),(10,'0000022000',70825,'STUTTGART','RADLELAND','DE00'),(11,'0000023000',22767,'HAMBURG','RED LIGHT BIKES','DE00'),(12,'0000024000',39130,'MAGDEBURG','VELODOM','DE00');
/*!40000 ALTER TABLE `customer_de` ENABLE KEYS */;
UNLOCK TABLES;



DROP TABLE IF EXISTS `product_US`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_US` (
  `pid` int(11) NOT NULL AUTO_INCREMENT,
  `pname` varchar(100) DEFAULT NULL,
  `code` varchar(45) DEFAULT NULL,
  `pnum` varchar(45) DEFAULT NULL,
  `type` varchar(45) DEFAULT NULL,
  `price` float(8,2)   NOT NULL,
  PRIMARY KEY (`pid`),
  UNIQUE KEY `product_UNIQUE` (`pnum`)
) ENGINE=MyISAM AUTO_INCREMENT=47 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;




DROP TABLE IF EXISTS `product_de`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_de` (
  `pid` int(11) NOT NULL AUTO_INCREMENT,
  `pname` varchar(100) DEFAULT NULL,
  `code` varchar(45) DEFAULT NULL,
  `pnum` varchar(45) DEFAULT NULL,
  `type` varchar(45) DEFAULT NULL,
  `price` float(8,2)   NOT NULL,
  PRIMARY KEY (`pid`),
  UNIQUE KEY `product_UNIQUE` (`pnum`)
) ENGINE=MyISAM AUTO_INCREMENT=47 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;



LOCK TABLES `product_US` WRITE;
/*!40000 ALTER TABLE `product_US` DISABLE KEYS */;
INSERT INTO `product_US` VALUES (1,'AIR PUMP','EN','PUMP1000','TG',40),(2,'ELBOW PADS','EN','EPAD1000','TG',20),(3,'FIRST AID KIT','EN','FAID1000','TG',50),(4,'KNEE PADS','EN','KPAD1000','TG',15),(5,'OFF ROAD HELMET','EN','OHMT1000','TG',20),(6,'REPAIR KIT','EN','RKIT1000','TG',45),(7,'ROAD HELMET','EN','RHMT1000','TG',20),(8,'T-SHIRT','EN','SHRT1000','TG',10),(9,'WATER BOTTLE','EN','BOTL1000','TG',5),(10,'WATER BOTTLE CAGE','EN','CAGE1000','TG',3),(11,'DELUXE TOURING BIKE (BLACK)','EN','DXTR1000','FG',400),(12,'DELUXE TOURING BIKE (RED)','EN','DXTR3000','FG',420),(13,'DELUXE TOURING BIKE (SILVER)','EN','DXTR2000','FG',460),(14,'MEN\'S OFF ROAD BIKE','EN','ORMN1000','FG',350),(15,'PROFESSIONAL TOURING BIKE (BLACK)','EN','PRTR1000','FG',550),(16,' PROFESSIONAL TOURING BIKE (RED)','EN','PRTR3000','FG',560),(17,'PROFESSIONAL TOURING BIKE (SILVER)','EN','PRTR2000','FG',540),(18,'WOMEN\'S OFF ROAD BIKE EN','EN','ORWN1000','FG',320);
/*!40000 ALTER TABLE `product_US` ENABLE KEYS */;
UNLOCK TABLES;


LOCK TABLES `product_de` WRITE;
/*!40000 ALTER TABLE `product_de` DISABLE KEYS */;
INSERT INTO `product_de` VALUES (1,'AIR PUMP','EN','PUMP1000','TG',35),(2,'ELBOW PADS','EN','EPAD1000','TG',20),(3,'FIRST AID KIT','EN','FAID1000','TG',50),(4,'KNEE PADS','EN','KPAD1000','TG',15),(5,'OFF ROAD HELMET','EN','OHMT1000','TG',20),(6,'REPAIR KIT','EN','RKIT1000','TG',45),(7,'ROAD HELMET','EN','RHMT1000','TG',20),(8,'T-SHIRT','EN','SHRT1000','TG',10),(9,'WATER BOTTLE','EN','BOTL1000','TG',5),(10,'WATER BOTTLE CAGE','EN','CAGE1000','TG',3),(11,'DELUXE TOURING BIKE (BLACK)','EN','DXTR1000','FG',380),(12,'DELUXE TOURING BIKE (RED)','EN','DXTR3000','FG',400),(13,'DELUXE TOURING BIKE (SILVER)','EN','DXTR2000','FG',410),(14,'MEN\'S OFF ROAD BIKE','EN','ORMN1000','FG',310),(15,'PROFESSIONAL TOURING BIKE (BLACK)','EN','PRTR1000','FG',510),(16,' PROFESSIONAL TOURING BIKE (RED)','EN','PRTR3000','FG',510),(17,'PROFESSIONAL TOURING BIKE (SILVER)','EN','PRTR2000','FG',540),(18,'WOMEN\'S OFF ROAD BIKE EN','EN','ORWN1000','FG',320);
/*!40000 ALTER TABLE `product_de` ENABLE KEYS */;
UNLOCK TABLES;



DROP TABLE IF EXISTS `vendor_US`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vendor_US` (
  `vid` int(11) NOT NULL AUTO_INCREMENT,
  `city` varchar(45) DEFAULT NULL,
  `vname` varchar(100) DEFAULT NULL,
  `vendornum` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`vid`),
  UNIQUE KEY `vendor_UNIQUE` (`vendornum`)
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;


DROP TABLE IF EXISTS `vendor_de`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vendor_de` (
  `vid` int(11) NOT NULL AUTO_INCREMENT,
  `city` varchar(45) DEFAULT NULL,
  `vname` varchar(100) DEFAULT NULL,
  `vendornum` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`vid`),
  UNIQUE KEY `vendor_UNIQUE` (`vendornum`)
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `vendor_US` WRITE;
/*!40000 ALTER TABLE `vendor_US` DISABLE KEYS */;
INSERT INTO `vendor_US` VALUES (1,'ATLANTA','OLYMPIC PROTECTIVE GEAR','101000'),(2,'CINCINNATI','BOOMTOWN TIRE &WHEEL','102000'),(3,'IRVING','DALLAS BIKE BASICS','103000'),(4,'EDISON','LIGHTBULB ACCESSORY KITS','104000'),(5,'HOUSTON','SPACE BIKE COMPOSITES','105000'),(6,'LACROSSE','NIGHT RIDER ALUMINUM PROD','106000'),(7,'MCLEAN','SPY GEAR','107000'),(8,'GRAND RAPIDS','RAPIDS NUTS N BOLTS','108000'),(9,'PORTLAND','GREEN BLAZERS SEATS','109000'),(10,'MIAMI','FUN N THE SUN SEATS N BAR','110000'),(11,'SCOTTSDALE','SUNNY SIDE UP TIRE','111000'),(12,'CARLSBAD','REDWOOD KITS','112000');
/*!40000 ALTER TABLE `vendor_us` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `vendor_de` WRITE;
/*!40000 ALTER TABLE `vendor_de` DISABLE KEYS */;
INSERT INTO `vendor_de` VALUES (1,'BRAUNSCHWEIG','BURGMEISTER ZUBEHOR OHO','113000'),(2,'BIELEFELD','PYRAMID BIKING','114000'),(3,'ERFURT','ABS BRAKES GMBH','115000'),(4,'MANNHEIM','FLAT TIRE AND MORE','116000'),(5,'KARLSRUHE','GUMMI SCHULTZE','117000'),(6,'AUGSBURG','LOHSE SCHRAUBE','118000'),(7,'HEILBRONN','THICK SPOKE','119000'),(8,'WURZBURG','MAIN CARBON','120000'),(9,'SANDKRUG','SHELL GEAR','121000'),(10,'KOLN','COLOGNE BIKE SUPPLIES','122000'),(11,'DRESDEN','SACHSEN STAHL AG','123000'),(12,'MUNCHEN','RUN & FUN','124000');
/*!40000 ALTER TABLE `vendor_de` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

DROP TABLE IF EXISTS `material_us`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `material_us` (
  `mid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `code` varchar(45) DEFAULT NULL,
  `mnum` varchar(45) DEFAULT NULL,
  `type` varchar(45) DEFAULT NULL,
  `price` float(8,2)   NOT NULL,
   PRIMARY KEY (`mid`),
  UNIQUE KEY `product_UNIQUE` (`mnum`)
) ENGINE=MyISAM AUTO_INCREMENT=47 DEFAULT CHARSET=latin1;

DROP TABLE IF EXISTS `material_de`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `material_de` (
  `mid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `code` varchar(45) DEFAULT NULL,
  `mnum` varchar(45) DEFAULT NULL,
  `type` varchar(45) DEFAULT NULL,
  `price` float(8,2)   NOT NULL,
  PRIMARY KEY (`mid`),
  UNIQUE KEY `product_UNIQUE` (`mnum`)
) ENGINE=MyISAM AUTO_INCREMENT=47 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `material_us` WRITE;
/*!40000 ALTER TABLE `material_us` DISABLE KEYS */;
INSERT INTO `material_us` VALUES (1,'CARBON COMPOSIT WHEEL ASSEMBLY','EN','CCWA1000','SFG',150),(2,'OFF ROAD ALUMINUM WHEEL ','EN','ALWA1000','SFG',80),(3,'TOURING ALUMINUM WHEEL ASSEMBLY','EN','ALWA2000','SFG',90),(4,'BRAKE KIT','EN','BRKT1000','RW',30),(5,'CARBON COMPOSIT WHEEL','EN','CCWH1000','RW',60),(6,'CHAIN','EN','CHAN1000','RW',15),(7,'DERAILLEUR GEAR ASSEMBLY','EN','DGAM1000','RW',80),(8,'HEX NUT 5 MM','EN','HXNT1000','RW',12),(9,'LOCK WASHER 5 MM','EN','LWSH1000','RW',20),(10,'MEN\'S OFF ROAD FRAME','EN','OFFR1000','RW',65),(11,'OFF ROAD ALUMINUM WHEEL','EN','ORWH1000','RW',45),(12,'OFF ROAD HANDLE BAR','EN','ORHB1000','RW',30),(13,'OFF ROAD SEAT KIT','EN','OFSK1000','RW',25),(14,'OFF ROAD TIRE','EN','ORTR1000','RW',45),(15,'OFF ROAD TUBE','EN','ORTB1000','RW',8),(16,'PACKAGING','EN','PCKG1000','RW',60),(17,'PEDAL ASSEMBLY','EN','PEDL1000','RW',48),(18,'SOCKET HEAD BOLT 5X2OMM','EN','BOLT1000','RW',15),(19,'TOURING ALUMINUM WHEEL','EN','TRWH1000','RW',40),(20,'TOURING FRAME-BLACK','EN','TRFR1000','RW',55),(21,'TOURING FRAME-RED','EN','TRFR3000','RW',65),(22,'TOURING FRAME-SILVER','EN','TRFR2000','RW',80),(23,'TOURING HANDLE BAR','EN','TRHB1000','RW',20),(24,'TOURING SEAT KIT','EN','TRSK1000','RW',18),(25,'TOURING TIRE','EN','TRTR1000','RW',8),(26,'TOURING TUBE','EN','TRTB1000','RW',8),(27,'WARRANTY DOCUMENT','EN','WDOC1000','RW',6),(28,'WOMEN\'S OFF ROAD FRAME','EN','OFFR2000','RW',60);
/*!40000 ALTER TABLE `material_us` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `material_de` WRITE;
/*!40000 ALTER TABLE `material_de` DISABLE KEYS */;
INSERT INTO `material_de` VALUES (1,'CARBON COMPOSIT WHEEL ASSEMBLY','EN','CCWA1000','SFG',140),(2,'OFF ROAD ALUMINUM WHEEL ','EN','ALWA1000','SFG',70),(3,'TOURING ALUMINUM WHEEL ASSEMBLY','EN','ALWA2000','SFG',80),(4,'BRAKE KIT','EN','BRKT1000','RW',25),(5,'CARBON COMPOSIT WHEEL','EN','CCWH1000','RW',50),(6,'CHAIN','EN','CHAN1000','RW',13),(7,'DERAILLEUR GEAR ASSEMBLY','EN','DGAM1000','RW',70),(8,'HEX NUT 5 MM','EN','HXNT1000','RW',11),(9,'LOCK WASHER 5 MM','EN','LWSH1000','RW',15),(10,'MEN\'S OFF ROAD FRAME','EN','OFFR1000','RW',55),(11,'OFF ROAD ALUMINUM WHEEL','EN','ORWH1000','RW',40),(12,'OFF ROAD HANDLE BAR','EN','ORHB1000','RW',25),(13,'OFF ROAD SEAT KIT','EN','OFSK1000','RW',22),(14,'OFF ROAD TIRE','EN','ORTR1000','RW',40),(15,'OFF ROAD TUBE','EN','ORTB1000','RW',6),(16,'PACKAGING','EN','PCKG1000','RW',55),(17,'PEDAL ASSEMBLY','EN','PEDL1000','RW',40),(18,'SOCKET HEAD BOLT 5X2OMM','EN','BOLT1000','RW',12),(19,'TOURING ALUMINUM WHEEL','EN','TRWH1000','RW',35),(20,'TOURING FRAME-BLACK','EN','TRFR1000','RW',50),(21,'TOURING FRAME-RED','EN','TRFR3000','RW',60),(22,'TOURING FRAME-SILVER','EN','TRFR2000','RW',75),(23,'TOURING HANDLE BAR','EN','TRHB1000','RW',18),(24,'TOURING SEAT KIT','EN','TRSK1000','RW',15),(25,'TOURING TIRE','EN','TRTR1000','RW',6),(26,'TOURING TUBE','EN','TRTB1000','RW',6),(27,'WARRANTY DOCUMENT','EN','WDOC1000','RW',5),(28,'WOMEN\'S OFF ROAD FRAME','EN','OFFR2000','RW',55);
/*!40000 ALTER TABLE `material_de` ENABLE KEYS */;
UNLOCK TABLES;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;




select * from customer_de;
select * from product_de;
select * from vendor_de;
select * from material_de;

desc vendor_us;
desc material_us;
desc customer_us;

select * from salesorders_us;
drop table sorders_us;

drop table salesorders_us;
create table salesorders_us (
         orderid int,
         customerid int,
		 productid int,
		 quantity int,
		 sale_time varchar(100)

     )

select * from salesorders_us,customer_us,product_us 
where salesorders_us.customerid=customer_us.id
AND salesorders_us.productid=product_us.pid;

create table salesorders_de(
         orderid int,
         customerid int,
		 productid int,
		 quantity int,
		 sale_time varchar(100)

     )
     
 select * from material_us;
 
 select * from salesorders_de,customer_de,product_de 
where salesorders_de.customerid=customer_de.id
AND salesorders_de.productid=product_de.pid;

desc material_us;

desc purchaseorders_de;

	create table purchaseorders_de(
         orderid int,
         vendorid int,
		 materialid int,
		 quantity int,
		 purchase_time varchar(100)

     )
     
select * from purchaseorders_de,vendor_de,material_de 
where purchaseorders_de.vendorid=vendor_de.vid
AND purchaseorders_de.materialid=material_de.mid;

create table purchaseorders_us(
         orderid int,
         vendorid int,
		 materialid int,
		 quantity int,
		 purchase_time varchar(100)

     )
     
select * from purchaseorders_us,vendor_us,material_us
where purchaseorders_us.vendorid=vendor_us.vid
AND purchaseorders_us.materialid=material_us.mid;

drop table purchaseorders_us;

select * from salesorders_de;

drop table ordersdetails_de;

drop table salesorders_de;


create table salesorders_de(
         orderid int,
         customerid int,
		 sale_time varchar(100)

     );



create table ordersdetails_de(
         orderdetailid int,
         productid int,
	
		 orderid int,
         count int

     );
	
select count(orderid),orderid from ordersdetails_de group by orderid;


select * from salesorders_de;


select * from ordersdetails_de;
select * from product_de;

select * from customer_de;




















