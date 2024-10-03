SELECT 
    f.num_f AS "Número Factura", 
    f.data AS "Data", 
    f.cod_ven AS "Codi Venedor"
FROM factura f;

/* f.num_f AS "Número Factura": Selecciona la columna num_f de la tabla factura y la muestra como "Número Factura".
f.data AS "Data": Selecciona la columna data (asumo que es la fecha de la factura) y le asigna el alias "Data".
f.cod_ven AS "Codi Venedor": Selecciona la columna cod_ven (el código del vendedor) y la muestra como "Codi Venedor".
FROM factura f: Aquí se selecciona la tabla factura, y el alias f permite referirse a las columnas de esa tabla de forma más rápida.
Ejemplo de resultado:
Número Factura	Data	Codi Venedor
1001	2024-10-03	VEN123
1002	2024-10-01	VEN124 */