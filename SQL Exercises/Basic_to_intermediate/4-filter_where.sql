SELECT *
FROM client c
WHERE c.cod_pob = 12309;


/* SELECT *: Selecciona todas las columnas de la tabla client.
FROM client c: La consulta se ejecuta sobre la tabla client, asignando el alias c para referirse a ella.
WHERE c.cod_pob = 12309: Filtra los registros donde el código postal (cod_pob) sea exactamente 12309.


Si deseas agregar más condiciones, como filtrar por el nombre del cliente además del código postal, podrías hacerlo así:

sql
Copiar código
SELECT *
FROM client c
WHERE c.cod_pob = 12309 
  AND c.nom LIKE 'A%';
Esto seleccionaría todos los clientes cuyo código postal sea 12309 y cuyo nombre comience con la letra 'A'.