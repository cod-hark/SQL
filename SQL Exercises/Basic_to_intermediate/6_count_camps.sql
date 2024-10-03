SELECT
    COUNT(*) AS NumVecesEnLineasDeFactura, -- Cuenta cuántas veces aparece el artículo
    SUM(quant) AS TotalUnidadesVendidas -- Suma las unidades vendidas
FROM LINIA_FAC
WHERE cod_a = 'L76104'; -- Filtra por el código del artículo específico

/*  COUNT(*) AS NumVecesEnLineasDeFactura: Cuenta el número total de registros en la tabla LINIA_FAC donde el código de artículo (cod_a) es 'L76104'. Esto representa cuántas veces aparece ese artículo en las líneas de facturas.

SUM(quant) AS TotalUnidadesVendidas: Suma el valor de la columna quant (cantidad) para todas las líneas donde el código de artículo es 'L76104'. Esto te da el total de unidades vendidas de ese artículo.

WHERE cod_a = 'L76104': Filtra los registros para que solo se consideren las líneas de factura donde el artículo tiene el código 'L76104'.

Ejemplo de resultado:
NumVecesEnLineasDeFactura	TotalUnidadesVendidas
15	150
Esto indicaría que el artículo 'L76104' aparece 15 veces en las líneas de factura y se han vendido un total de 150 unidades.

Posibles extensiones:
Añadir un filtro de fechas: Si también quieres filtrar por facturas de un rango de fechas, podrías unirte con la tabla de facturas y aplicar el filtro:

sql
Copiar código
SELECT
    COUNT(*) AS NumVecesEnLineasDeFactura,
    SUM(quant) AS TotalUnidadesVendidas
FROM LINIA_FAC lf
JOIN factura f ON lf.num_f = f.num_f
WHERE lf.cod_a = 'L76104'
AND f.data BETWEEN '2024-01-01' AND '2024-12-31';
*/

