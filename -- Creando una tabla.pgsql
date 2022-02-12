-- Creando una tabla
CREATE TABLE alumnos (
    id UUID DEFAULT gen_random_uuid() NOT NULL,
    nombre VARCHAR(50) NOT NULL,
    apellido VARCHAR(50) NOT NULL,
    edad SMALLINT DEFAULT 18
);
-- Seleccionando informacion de una tabla
SELECT * FROM alumnos;

-- Insertando informacion dentro de una tabla
INSERT INTO alumnos 
    VALUES 
    (DEFAULT, 'feernando', 'Sosa Torres', 25),
    (DEFAULT, 'Anacleto', 'Torres Sosa', 26),
    (DEFAULT, 'Panfilo', 'Sos Tor', 30),
    (DEFAULT, 'Maria', 'anaCle', 32);

-- Actualizando informacion de campos en especificos
UPDATE alumnos 
    SET nombre = 'Amorcito', apellido = 'mi vida'
    WHERE id = '4a10886c-d69f-4f29-a26b-326954b9c772';

-- Seleccinnando elementos de una tabla con condision
SELECT * FROM alumnos WHERE id = '4a10886c-d69f-4f29-a26b-326954b9c772';

-- Borrar informacion
DELETE FROM alumnos 
    WHERE id = 'c59bda22-fa4e-4b61-9564-dc15c54fb919';

-- Anadiendo nueva columna en la tabla
ALTER TABLE alumnos ADD COLUMN activo BOOL DEFAULT false;

-- Borrar una columna de table
ALTER TABLE alumnos DROP COLUMN activo;

INSERT INTO alumnos 
    VALUES (DEFAULT, 'prueba', 'pruebaApellido', 40, null );

-- Borrar informacion cuando un valor es null
DELETE FROM alumnos
    WHERE activo IS NULL;

    