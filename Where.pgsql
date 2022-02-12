-- Filtros abbrev
-- WHERE campo operador valor, ejemplo : WHERE first_name = 'Alexys

SELECT * FROM alumnos;
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

