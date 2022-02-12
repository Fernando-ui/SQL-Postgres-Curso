-- Filtros abbrev
-- WHERE campo operador valor, ejemplo : WHERE first_name = 'Alexys

SELECT * FROM alumnos;
SELECT * FROM profesores;
SELECT * FROM trabajadores;

-- INSERT INTO alumnos VALUES (DEFAULT,'Alejandro', 'Gomez', DEFAULT, DEFAULT );

SELECT * FROM alumnos WHERE nombre = 'Anacleto';
 
-- Funciones
SELECT * FROM  alumnos WHERE upper(nombre) = 'ANACLETO';

-- Operadores de comparacion
-- = igual
-- < menor
-- > mayor
-- <= menor igual que
-- >= mayor igual que 
-- <> Diferentes

SELECT * FROM  alumnos WHERE nombre <  'Anacleto';
SELECT * FROM  alumnos WHERE nombre >  'Anacleto';
SELECT * FROM  alumnos WHERE nombre <= 'Anacleto';
SELECT * FROM  alumnos WHERE nombre >= 'Anacleto';
SELECT * FROM  alumnos WHERE nombre <> 'Anacleto';

-- AND OR
SELECT * FROM  alumnos WHERE nombre = 'Anacleto' AND apellido <> '';
SELECT * FROM  alumnos WHERE nombre = 'Anacleto' OR activo = false;


-- LIKE Normal
SELECT * FROM alumnos WHERE nombre LIKE 'Maria';

-- LIKE un solo caracter '_' , por cada guion bajo es una leetra
SELECT * FROM alumnos WHERE nombre LIKE 'Ale__';


-- LIKE  varios caracteres '%', no nos importara que es lo que viene despues
SELECT * FROM  alumnos WHERE nombre LIKE 'Ale%';

-- ILIKE No nos importara si es mayuscula o minuscula
SELECT * FROM  alumnos WHERE nombre ILIKE 'alej%';

-- BETWEEN Nos permitira buscar en un rango de algo, Es importante colocar la palabra AND
SELECT * FROM alumnos WHERE edad BETWEEN 23 AND 25 ;
SELECT * FROM alumnos WHERE edad > 25 ;

-- IN VALORES  nos permite buscar o encontrar entre un grupo especifico de datos, colocamos el campo que queremos y junto con ello los valores que queremos, solo nos mostrara los valores si es que existen. Es como un igual a solo que mas resumido.
SELECT * FROM alumnos WHERE id IN ('e1ff23dd-5d4d-484a-92cb-becc474c1002','4a10886c-d69f-4f29-a26b-326954b9c772');

-- IN SELECT Buscaremos en una tabla si es que otra tabla tiene relacion o campos relacionados a ella.. Para eso le decimos IN , EN , que se encuentre dentro de
SELECT * FROM alumnos WHERE nombre IN ( SELECT nombre FROM trabajadores);

-- IS NULL
SELECT * FROM  trabajadores WHERE  update_at IS NULL;

-- NOT Para indicar que algo no esta nulo
SELECT * FROM  alumnos WHERE  nombre IS NOT NULL;
SELECT * FROM alumnos WHERE nombre NOT IN ( SELECT nombre FROM trabajadores);