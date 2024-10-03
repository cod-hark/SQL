SELECT 
    CONCAT(
        INITCAP(LOWER(SPLIT_PART(nom, ' ', 1))), ' ', -- Primer apellido con la primera letra en mayúscula
        INITCAP(LOWER(SPLIT_PART(nom, ' ', 2))), ', ', -- Segundo apellido con la primera letra en mayúscula
        INITCAP(LOWER(SPLIT_PART(nom, ' ', 3))), '. ', -- Nombre con la primera letra en mayúscula
        UPPER(adreca), ', ', -- Dirección completamente en mayúsculas
        cp -- Código postal entre paréntesis
    ) AS "Informació client"
FROM client; -- Tabla de clientes (ajusta el nombre de la tabla si es diferente)

/* INITCAP(LOWER(...)): Convierte el texto en formato "Title Case", es decir, la primera letra en mayúscula y el resto en minúsculas. Usamos LOWER() para asegurarnos de que el resto de las letras sean minúsculas.
SPLIT_PART(nom, ' ', ...): Divide la cadena en partes basadas en el espacio (' '). Por ejemplo, SPLIT_PART(nom, ' ', 1) obtiene el primer apellido, SPLIT_PART(nom, ' ', 2) el segundo apellido y SPLIT_PART(nom, ' ', 3) el nombre.
UPPER(adreca): Convierte toda la dirección (adreca) en mayúsculas.
CONCAT: Une todos los elementos en una sola cadena de texto. */

/*Ejemplo del resultado:
Si tienes un cliente llamado "Damborenea Corbato Alicia" con la dirección "Calle Madrid, 83" y código postal "12425", el resultado sería:

objectivec
Copiar código
Damborenea Corbato, Alicia. CALLE MADRID, 83 (12425)




concat se puede usar con from?
ChatGPT Plus
ChatGPT
No, CONCAT no puede usarse directamente con la cláusula FROM, ya que CONCAT es una función que sirve para unir cadenas de texto, mientras que FROM se usa para especificar la tabla de la que se va a extraer la información en una consulta.

Sin embargo, puedes usar CONCAT en la lista de selección (SELECT) para concatenar valores de las columnas de la tabla especificada en FROM. Por ejemplo, si deseas concatenar varias columnas de una tabla, lo haces en el SELECT.

Ejemplo de uso correcto de CONCAT:
Supongamos que tienes una tabla llamada cliente y deseas concatenar el nombre y el apellido de los clientes:

sql
Copiar código
SELECT CONCAT(nom, ' ', cognom) AS nombre_completo
FROM cliente;
Explicación:
SELECT CONCAT(nom, ' ', cognom): Aquí concatenas las columnas nom y cognom (nombre y apellido) con un espacio entre ellas.
FROM cliente: Esto indica que los datos provienen de la tabla cliente.
Ejemplo de resultado:
nombre_completo
Juan Pérez
María González
¿Qué puedes hacer con CONCAT?
Puedes concatenar múltiples columnas o valores constantes.
Puedes combinar funciones como CONCAT con otras funciones (como UPPER, LOWER, COALESCE, etc.) dentro de la cláusula SELECT.
Ejemplo con más columnas y funciones:
Si quisieras concatenar el nombre, apellido, y el código postal de un cliente, todo en mayúsculas, podrías hacer lo siguiente:

sql
Copiar código
SELECT CONCAT(UPPER(nom), ' ', UPPER(cognom), ' - ', cp) AS info_cliente
FROM cliente;
Esto generaría una columna que contiene el nombre completo en mayúsculas seguido del código postal.
*/


