## 
## Escriba una consulta que compute el promedio
## de la columna c21 de la tabla tbl2 por ano 
## (columna c23) que este ordenada por año. 
##
SELECT YEAR(c23), AVG(c21) FROM tbl2 GROUP BY YEAR(c23) ORDER BY YEAR(C23);

