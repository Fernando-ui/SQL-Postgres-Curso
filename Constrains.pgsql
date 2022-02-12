-- Borrar tablas si existen
DROP TABLE IF EXISTS trabajadores;

-- Reestricciones de la llave primari, llave unica y llaves foraneas
CREATE TABLE trabajadores(
    id UUID DEFAULT gen_random_uuid() NOT NULL,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(59) NOT NULL,
    cumpleanios DATE NOT NULL,
    create_at TIMESTAMP DEFAULT now() NOT NULL,
    update_at TIMESTAMP,
    CONSTRAINT persons_id_pk PRIMARY KEY (id),
    CONSTRAINT persons_first_name_last_name_uk UNIQUE (first_name, last_name)
);

-- REvisando que es lo qye hay dentro de la tabla|
SELECT * FROM trabajadores;

-- Eliminando tabla
DROP TABLE trabajadores;

-- Insertar los ddatos en la tabla de personas 
INSERT INTO trabajadores 
    VALUES (DEFAULT, 'Alejando', 'Perez', now(), DEFAULT, NULL);