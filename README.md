# UE6-Log
- Lege eine neue Datenbank 'wegreisen' auf 'localhost' an
```
CREATE TABLE `hotels` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(128) DEFAULT NULL,
  `city` varchar(128) DEFAULT NULL,
  `country` varchar(128) DEFAULT NULL,
  `rating` int(11) DEFAULT NULL,
  `img_url` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`id`)
)
``` 
- Füge einige Testdaten ein:
``` 
INSERT INTO `hotel` (`id`, `name`, `city`, `country`, `rating`, `img_url`)
VALUES
	(1, 'Grand Hotel', 'Leipzig', 'Deutschland', 4, 'leipzig.png'),
	(2, 'Hotel Royal', 'Paris', 'Frankreich', 5, 'paris.png'),
	(3, 'Hotel Hungary', 'Budapest', 'Ungarn', 5, 'budapest.png'),
	(4, 'Jugendherberge Baden', 'Baden', 'Österreich', 1, 'baden.png'),
	(5, 'Hotel IBIS', 'Linz', 'Österreich', 3, 'linz.png');
``` 
- Erstelle einen Datenbankbenutzer, der Zugriff auf alles in 'wegreisen' hat, sonst nichts darf.
- Verbinde die Datenbank mit Netbeans, siehe https://netbeans.org/kb/docs/ide/mysql.html
- Die Database URL in Netbeans ist bei mir: ```jdbc:mysql://localhost:3306/wegreisen?zeroDateTimeBehavior=convertToNull```
- Habe in Project Properties 'Hibernate' Support hinzugefügt
- Bin https://www.tutorialspoint.com/hibernate/hibernate_configuration.htm gefolgt und habe in der ```hibernate.cfg.xml``` die JDBC Properties editiert, sodass Hibernate für meine MySQL DB konfiguriert ist. 
- Bin gefolgt (bis Minute 8): https://www.youtube.com/watch?v=Zb2cW25prCQ zum Aufsetzen und automatischen Erzeugen der Hibernate-Konfiguration, des Models, usw.
- Hier sieht man, wie man in Hibernate Queries formuliert: https://www.tutorialspoint.com/hibernate/hibernate_query_language.htm
- Der Rest war ähnliche Arbeit wie in den letzten Übungen, HelloController anpassen, JSPs erstellen, etc.
