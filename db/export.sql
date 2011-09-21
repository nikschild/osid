BEGIN TRANSACTION;
CREATE TABLE "additions" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "name" varchar(255), "description" text, "user_id" integer, "incident_id" integer, "date" date, "created_at" datetime, "updated_at" datetime);
INSERT INTO additions VALUES(1,'News from the RSA Hack','This is the description of the new hack',2,1,NULL,'2011-07-07 19:40:40.291598','2011-07-07 19:40:40.291598');
INSERT INTO additions VALUES(2,'RSA goes public','RSA goes public',3,1,NULL,'2011-07-07 19:40:40.407605','2011-07-07 19:40:40.407605');
CREATE TABLE "attackers" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "name" varchar(255), "description" varchar(255), "created_at" datetime, "updated_at" datetime);
INSERT INTO attackers VALUES(1,'Organized Crime',NULL,'2011-07-07 19:40:38.608502','2011-07-07 19:40:38.608502');
INSERT INTO attackers VALUES(2,'Structured Threads',NULL,'2011-07-07 19:40:38.736509','2011-07-07 19:40:38.736509');
INSERT INTO attackers VALUES(3,'Script Kiddies',NULL,'2011-07-07 19:40:38.865517','2011-07-07 19:40:38.865517');
INSERT INTO attackers VALUES(4,'Hacktivists',NULL,'2011-07-07 19:40:39.007525','2011-07-07 19:40:39.007525');
CREATE TABLE "countries" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "name" varchar(255), "code" varchar(255), "created_at" datetime, "updated_at" datetime);
INSERT INTO countries VALUES(1,'Switzerland','CH','2011-07-07 19:40:36.905405','2011-07-07 19:40:36.905405');
INSERT INTO countries VALUES(2,'Germanry','DE','2011-07-07 19:40:37.100416','2011-07-07 19:40:37.100416');
INSERT INTO countries VALUES(3,'United Kingdom','UK','2011-07-07 19:40:37.245424','2011-07-07 19:40:37.245424');
INSERT INTO countries VALUES(4,'United States','US','2011-07-07 19:40:37.355430','2011-07-07 19:40:37.355430');
CREATE TABLE "events" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "header" varchar(255), "content" text, "user_id" integer, "created_at" datetime, "updated_at" datetime);
CREATE TABLE "incidents" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "name" varchar(255), "firstseen" date, "user_id" integer, "summary" text, "pvname" varchar(255), "pv_sector_id" integer, "svname" varchar(255), "sv_sector_id" integer, "attackdescription" varchar(255), "attack_id" integer, "targetdescription" varchar(255), "target_id" integer, "country_id" integer, "created_at" datetime, "updated_at" datetime);
INSERT INTO incidents VALUES(1,'RSA Hack',NULL,2,'RSA Hack Summary',NULL,1,NULL,1,NULL,1,NULL,1,1,'2011-07-07 19:40:39.380546','2011-07-07 19:40:39.380546');
INSERT INTO incidents VALUES(2,'Hack 1',NULL,3,'Hack 1 Summary',NULL,1,NULL,1,NULL,1,NULL,1,1,'2011-07-07 19:40:39.564557','2011-07-07 19:40:39.564557');
INSERT INTO incidents VALUES(3,'Hack 2',NULL,1,'Hack 2 Summary',NULL,1,NULL,1,NULL,1,NULL,1,1,'2011-07-07 19:40:39.713565','2011-07-07 19:40:39.713565');
INSERT INTO incidents VALUES(4,'Hack 3',NULL,3,'Hack 3 Summary',NULL,1,NULL,1,NULL,1,NULL,1,1,'2011-07-07 19:40:39.844573','2011-07-07 19:40:39.844573');
INSERT INTO incidents VALUES(5,'Hack 4',NULL,3,'Hack 4 Summary',NULL,1,NULL,1,NULL,1,NULL,1,1,'2011-07-07 19:40:39.992581','2011-07-07 19:40:39.992581');
INSERT INTO incidents VALUES(6,'Hack 5',NULL,1,'Hack 5 Summary',NULL,1,NULL,1,NULL,1,NULL,1,1,'2011-07-07 19:40:40.117588','2011-07-07 19:40:40.117588');
CREATE TABLE "schema_migrations" ("version" varchar(255) NOT NULL);
INSERT INTO schema_migrations VALUES(20110623034840);
INSERT INTO schema_migrations VALUES(20110623034856);
INSERT INTO schema_migrations VALUES(20110623034912);
INSERT INTO schema_migrations VALUES(20110623034928);
INSERT INTO schema_migrations VALUES(20110628193750);
INSERT INTO schema_migrations VALUES(20110706184704);
INSERT INTO schema_migrations VALUES(20110706184722);
INSERT INTO schema_migrations VALUES(20110707183038);
INSERT INTO schema_migrations VALUES(20110707183745);
CREATE TABLE "sectors" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "name" varchar(255), "description" varchar(255), "created_at" datetime, "updated_at" datetime);
INSERT INTO sectors VALUES(1,'Education','Schools, Universities, etc.','2011-07-07 19:40:37.509439','2011-07-07 19:40:37.509439');
INSERT INTO sectors VALUES(2,'Entertainment and Media','Media companies, Game, Video, etc.','2011-07-07 19:40:37.645447','2011-07-07 19:40:37.645447');
INSERT INTO sectors VALUES(3,'Government','Government agencies','2011-07-07 19:40:37.764454','2011-07-07 19:40:37.764454');
CREATE TABLE "sources" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "name" varchar(255), "summary" text, "publisher" varchar(255), "media" integer, "publishingdate" date, "user_id" integer, "addition_id" integer, "reference" varchar(255), "created_at" datetime, "updated_at" datetime);
INSERT INTO sources VALUES(1,'RSA Hacked by criminals','reports say that criminals hacked the RSA infrastructure','The Register',NULL,NULL,2,1,'www.theregister.co.uk','2011-07-07 19:40:40.587615','2011-07-07 19:40:40.587615');
INSERT INTO sources VALUES(2,'Public Letter from RSA','Art Coviello''s Mea Culpa','RSA Inc',NULL,NULL,3,2,'www.rsa.com/openletter','2011-07-07 19:40:40.711622','2011-07-07 19:40:40.711622');
INSERT INTO sources VALUES(3,'What realy happend','A behind the sceens report','Ars Technica',NULL,NULL,2,1,'www.ars.com','2011-07-07 19:40:40.842630','2011-07-07 19:40:40.842630');
CREATE TABLE sqlite_sequence(name,seq);
INSERT INTO sqlite_sequence VALUES('countries',4);
INSERT INTO sqlite_sequence VALUES('sectors',3);
INSERT INTO sqlite_sequence VALUES('targets',5);
INSERT INTO sqlite_sequence VALUES('attackers',4);
INSERT INTO sqlite_sequence VALUES('incidents',6);
INSERT INTO sqlite_sequence VALUES('additions',2);
INSERT INTO sqlite_sequence VALUES('sources',3);
INSERT INTO sqlite_sequence VALUES('users',3);
CREATE TABLE "targets" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "name" varchar(255), "description" varchar(255), "created_at" datetime, "updated_at" datetime);
INSERT INTO targets VALUES(1,'PII','General Personal Identifying Data','2011-07-07 19:40:37.924463','2011-07-07 19:40:37.924463');
INSERT INTO targets VALUES(2,'Credit Card Data',NULL,'2011-07-07 19:40:38.070471','2011-07-07 19:40:38.070471');
INSERT INTO targets VALUES(3,'Access Credentials',NULL,'2011-07-07 19:40:38.198479','2011-07-07 19:40:38.198479');
INSERT INTO targets VALUES(4,'Enterprise Confidential Data',NULL,'2011-07-07 19:40:38.327486','2011-07-07 19:40:38.327486');
INSERT INTO targets VALUES(5,'Other',NULL,'2011-07-07 19:40:38.444493','2011-07-07 19:40:38.444493');
CREATE TABLE "users" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "name" varchar(255), "email" varchar(255), "encrypted_password" varchar(255), "salt" varchar(255), "admin" boolean, "active" boolean, "lastlogin" datetime, "created_at" datetime, "updated_at" datetime);
INSERT INTO users VALUES(1,'anonymous','anonymous@anonymous.com','a4b5c2c5bacbe033944154b335acfc172bbc8de61b855bd4395f142e94a381d5','648bf898d29132d0be7162d61e13412ff37270ae5da24d277bb8833b838881fb','f','t',NULL,'2011-07-07 19:42:57.863467','2011-07-07 19:42:57.863467');
INSERT INTO users VALUES(2,'nik','n.schild@gmx.ch','ccef01720f7db53ad3b639e2189a354fa4ab0a1d43519707f5e7433c32b602d8','ae3f6fcd89ae60a065c5bc958dd7eb93975fb1f54574647bdd1f8b7313b18fe7','t','t',NULL,'2011-07-07 19:43:11.700258','2011-07-07 19:43:11.700258');
INSERT INTO users VALUES(3,'joe','joe@gmail.com','f59b5cf4e14c4175bcfbfe6f122638baa535df0c4a7ba5c1f75ddcc7ee2053cc','cd8c74464b3f694717c5eab4dfb24e51826b38281de0e14de58f168db8bb941d','f','t',NULL,'2011-07-07 19:43:29.656285','2011-07-07 19:43:29.656285');
CREATE UNIQUE INDEX "unique_schema_migrations" ON "schema_migrations" ("version");
COMMIT;
