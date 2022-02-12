-- SELECT
-- Puede recibit constantes, expresiones, funciones y cambpos de tablas

-- Constantes
SELECT 'hola mundo';

SELECT 8;

-- Expresiones 
SELECT 2*2+2/2;

-- Cast, si no casteamos el numero, este tomara la parte entera, si queremos la parte decimal, tenemos que especificarle que son tipo numeric.
SELECT 8::numeric/23::numeric;
SELECT 8::numeric/3::numeric;

-- Cast no valido
-- SELECT 'HOLA'::int

-- Cast valido . String a Fecha
SELECT '2021-05-13'::date;

-- Funciones
SELECT now();
SELECT upper('Hola mundo');
SELECT lower('HOLA MUNDO');

INSERT INTO alumnos VALUES (DEFAULT,'fer','sosa',DEFAULT);

-- Campos de tablas, todos los campos
SELECT * FROM alumnos;

-- Campos en especifico
SELECT id, nombre 
    FROM alumnos;

-- Uniendo querys anteriores
SELECT id, upper(nombre), 2+4/3, '2021-02-14' FROM alumnos;