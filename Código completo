-- Crear base de datos
CREATE DATABASE DB1;

-- Seleccionar base de datos
USE DB1;

-- Crear tbl0 y cargar informacion
CREATE TABLE tbl0 ( KO CHAR(1), c01 INT, c02 INT, c03 CHAR(4), c04 FLOAT);
LOAD DATA LOCAL INFILE 'tbl0.csv' INTO TABLE tbl0 FIELDS TERMINATED BY ',';

-- Crear tbl1 y cargar informacion
CREATE TABLE tbl1 (K0 CHAR(1), K1 INT, c12 FLOAT, c13 INT, c14 DATE, c15 FLOAT, c16 CHAR(4));
LOAD DATA LOCAL INFILE 'tbl1.csv' INTO TABLE tbl1 FIELDS TERMINATED BY ',';

-- Crear tbl2 y cargar informacion
CREATE TABLE tbl2 (K1 INT, c21 FLOAT, c22 INT, c23 DATE, c24 FLOAT, c25 CHAR(5));
LOAD DATA LOCAL INFILE 'tbl2.csv' INTO TABLE tbl2 FIELDS TERMINATED BY ',';

-- Revisar tablas cargadas
SELECT * FROM tbl0;
SELECT * FROM tbl1;
SELECT * FROM tbl2;

-- q01.sql
--## Escriba una consulta que devuelva la suma del campo c12
--## de la tabla tbl1
SELECT SUM(c12) FROM tbl1;
  
-- q02.sql
--## Escriba una consulta que retorne la cantidad de registros
--## de la tabla tbl1
SELECT COUNT(*) FROM tbl1;

-- q03.sql
--## --## Escriba una consulta que retorne los primeros cinco
--## registros de la tabla tbl1 ordenados por fecha
SELECT * FROM tbl1 ORDER BY c14 LIMIT 5;

-- q04.sql
--## Escriba una consulta que retorne los campos K0 y c16
--## para los registros de la tabla tbl1 para los que la 
--## columna c16 empieza por la misma letra de la columna K0
SELECT K0, c16 FROM tbl1 WHERE K0 = LEFT(c16,1);

-- q05.sql
--## Escriba una consulta que retorne todos los campos de 
--## la tabla tbl0 para los que el campo c02 es igual a 100
--## o igual a 600
SELECT * FROM tbl0 WHERE c02=100 OR c02=600;

-- q06.sql
--## Escriba una consulta que retorne todos los campos de 
--## la tabla tbl1 ordenada por fecha (c14) para los 
--## registros con K0 igual a A
SELECT * FROM tbl1 c14 WHERE K0="A" ORDER BY c14;

-- q07.sql
--## Escriba una consulta que retorne todos los campos de 
--## la tabla tbl1 ordenada por fecha (c14) para los 
--## registros con K0 diferente a A y B y c13 diferente 
--## de 200 y 900
SELECT * FROM tbl1 WHERE K0 NOT IN ('A','B') AND c13 NOT IN (200,300) ORDER BY c14;

-- q08.sql
--## Escriba una consulta que compute el promedio
--## de la columna c21 de la tabla tbl2 por ano 
--## (columna c23) que este ordenada por año. 
SELECT YEAR(c23), AVG(c21) FROM tbl2 GROUP BY YEAR(c23) ORDER BY YEAR(C23);

-- q09.sql
--## Escriba una consulta que retorne el registro
--## con el menor valor en la columna c21 de la 
--## tabla tbl2.
SELECT MIN(c21) FROM tbl2;

-- q10.sql
--## Escriba una consulta que retorne todos los 
--## campos de los registros de la tabla tbl0 
--## con la columna c02 mayor o igual a 300.
SELECT * FROM tbl0 WHERE c02 >= 300;

-- q11.sql
--## Escriba una consulta que retorne el total 
--## de registros de la tabla tbl1 para el ano
--## 2018
SELECT COUNT(*) FROM tbl1 WHERE YEAR(c14) = 2018;

-- q12.sql
--## Escriba una consulta que retorne el total 
--## de registros de la tabla tbl1 para el ano
--## 2018
SELECT COUNT(*) FROM tbl1 WHERE YEAR(c14) = 2018;

-- q13.sql
--## Escriba una consulta que retorne por cada letra
--## de la columna K0, el valor máximo de la coumna c12
--## en la tabla tbl1.
SELECT K0, MAX(c12) FROM tbl1 GROUP BY K0;

-- q14.sql
--## Escriba una consulta que retorne por cada letra
--## de la columna K0, el valor promedio de la columna c12
--## en la tabla tbl1, para aquellos registros con c13 mayor
--## a 400.
SELECT K0, AVG(c12) FROM tbl1 WHERE c13 > 400 GROUP BY K0;

-- q15.sql
--## Escriba una consulta que retorne por cada letra
--## de la columna K0, el valor promedio de la columna c21
--## en la tabla tbl1, para aquellos registros con c13 mayor
--## a 400.
SELECT K0, AVG(c12) FROM tbl1 WHERE c13 > 400 GROUP BY K0;
