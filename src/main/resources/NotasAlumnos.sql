
/* ******** TABLAS ALUMNOS, ASIGNATURAS, NOTAS:  MySQL********** */

SET FOREIGN_KEY_CHECKS = 0; 
drop table if EXISTS notas;
drop table if EXISTS alumnos;
drop table if EXISTS asignaturas;

CREATE TABLE IF NOT EXISTS ALUMNOS
(
  DNI VARCHAR(10) NOT NULL primary key,
  APENOM VARCHAR(30),
  DIREC VARCHAR(30),
  POBLA  VARCHAR(15),
  TELEF  VARCHAR(10)  
) ;

CREATE TABLE IF NOT EXISTS ASIGNATURAS
(
  COD int NOT NULL primary key,
  NOMBRE VARCHAR(25)
) ;

CREATE TABLE IF NOT EXISTS NOTAS
(
  ID int AUTO_INCREMENT,
  DNI VARCHAR(10) NOT NULL ,
  COD int NOT NULL ,
  NOTA int, 
  primary key(ID)
);

/* Create Foreign Keys */

ALTER TABLE NOTAS
	ADD CONSTRAINT FKNOTASALUM FOREIGN KEY (DNI)
	REFERENCES ALUMNOS (DNI)
	ON UPDATE CASCADE
	ON DELETE RESTRICT;


ALTER TABLE NOTAS
	ADD CONSTRAINT FKNOTASASIG FOREIGN KEY (COD)
	REFERENCES ASIGNATURAS (COD)
	ON UPDATE CASCADE
	ON DELETE RESTRICT;

	
INSERT IGNORE INTO ASIGNATURAS VALUES (1,'Programación');
INSERT IGNORE INTO ASIGNATURAS VALUES (2,'Sistemas Informáticos');
INSERT IGNORE INTO ASIGNATURAS VALUES (3,'Análisis');
INSERT IGNORE INTO ASIGNATURAS VALUES (4,'FOL');
INSERT IGNORE INTO ASIGNATURAS VALUES (5,'FCN');
INSERT IGNORE INTO ASIGNATURAS VALUES (6,'Entornos de Desarrollo');
INSERT IGNORE INTO ASIGNATURAS VALUES (7,'Desarrollo de Interfaces');
INSERT IGNORE INTO ASIGNATURAS VALUES (8,'Idioma');


INSERT IGNORE INTO ALUMNOS VALUES
('12344345','Alcalde García, Elena', 'C/Las Matas, 24','Madrid','917766545');

INSERT IGNORE INTO ALUMNOS VALUES
('12344346','Gómez Pérez, Lara', 'C/Unica, 2','Sabiñánigo','974766545');


INSERT IGNORE INTO ALUMNOS VALUES
('4448243','Moreno López, Ismael', 'C/Mayor 8', 'Jaca','974566545');

INSERT IGNORE INTO ALUMNOS VALUES
('56882943','Sala Blanco, Lola', 'C/Contamina 3', 'Sabiñángigo','915577545');

INSERT IGNORE INTO NOTAS(DNI, COD, NOTA) VALUES('12344345', 1,6);
INSERT IGNORE INTO NOTAS(DNI, COD, NOTA) VALUES('12344345', 2,5);
INSERT IGNORE INTO NOTAS(DNI, COD, NOTA) VALUES('12344345', 3,6);

INSERT IGNORE INTO NOTAS(DNI, COD, NOTA) VALUES('4448243', 4,6);
INSERT IGNORE INTO NOTAS(DNI, COD, NOTA) VALUES('4448243', 5,8);
INSERT IGNORE INTO NOTAS(DNI, COD, NOTA) VALUES('4448243', 6,4);
INSERT IGNORE INTO NOTAS(DNI, COD, NOTA) VALUES('4448243', 7,5);

INSERT IGNORE INTO NOTAS(DNI, COD, NOTA) VALUES('56882943', 4,8);
INSERT IGNORE INTO NOTAS(DNI, COD, NOTA) VALUES('56882943', 5,7);
INSERT IGNORE INTO NOTAS(DNI, COD, NOTA) VALUES('56882943', 6,8);
INSERT IGNORE INTO NOTAS(DNI, COD, NOTA) VALUES('56882943', 7,9);

commit;



-- ******** FIN ***********************

