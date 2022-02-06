-- Creaar tabla de personas
-- ID, nombre, apellido, edad, fecha nacimiento, disponibilidad.
CREATE TABLE persons (
    id UUID,
    fist_name VARCHAR(60),
    last_name VARCHAR(60),
    age SMALLINT,
    birthday DATE,
    available BOOL
);

-- Crear Tabla de trabajos
-- id, id_persona, fecha_inicial, fecha_final, ultimo_trabajo
CREATE TABLE jobs (
    id UUID,
    persons_id UUID,
    fecha_inicial DATE,
    fecha_final DATE,
    ultimo_trabajo BOOL
);

-- Borrar la edad de tabla personas
ALTER TABLE persons DROP  COLUMN age;

-- Agregando elemento a la tabla jobs
ALTER TABLE jobs ADD COLUMN job_name VARCHAR(50);

-- Borrar tablas
CREATE TABLE borrar (
    id UUID,
    persons_id UUID,
    fecha_inicial DATE,
    fecha_final DATE,
    ultimo_trabajo BOOL
);

DROP TABLE borrar;