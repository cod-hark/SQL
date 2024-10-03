SELECT *
FROM factura f
WHERE EXTRACT(YEAR FROM f.data) = 2015
  AND EXTRACT(MONTH FROM f.data) = 3;

/*  EXTRACT(YEAR FROM f.data): Extrae el año de la columna data (que debe ser de tipo DATE o DATETIME).
EXTRACT(MONTH FROM f.data): Extrae el mes de la columna data.
WHERE: Filtra los registros que cumplen con ambas condiciones:fd
El año es 2015.
El mes es marzo (mes 3).
Ejemplo de resultado:
La consulta seleccionaría todas las facturas emitidas en marzo de 2015.

num_f	data	    cod_ven	total
1001	2015-03-12	VEN123	120.50
1002	2015-03-22	VEN124	85.00
Posibles extensiones:
Filtrar por un rango de fechas: Si necesitas un rango de fechas en lugar de solo un mes específico, podrías usar una condición de rango en la columna data:

sql
Copiar código
SELECT *
FROM factura f
WHERE f.data BETWEEN '2015-03-01' AND '2015-03-31';
Agregar más condiciones: Si también quieres filtrar por código de vendedor, podrías añadir una condición adicional:

sql
Copiar código
SELECT *
FROM factura f
WHERE EXTRACT(YEAR FROM f.data) = 2015
  AND EXTRACT(MONTH FROM f.data) = 3
  AND f.cod_ven = 'VEN123';
  */


SELECT *
FROM client c
WHERE c.nom LIKE 'VILLALONGA%';

-- LIKE 'VILLALONGA%': Esta condición filtra los resultados donde el nombre (nom) comienza con "VILLALONGA". 
--El símbolo % después de "VILLALONGA" significa que puede haber cualquier cantidad de caracteres 
--(incluidos cero) después de esa palabra.

