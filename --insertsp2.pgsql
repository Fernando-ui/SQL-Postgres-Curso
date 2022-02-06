-- 1.9 Insert into tabla (campo1, campo2, ..., campoN) VALUES(valor1, ..., valorN);
INSERT INTO persons (id,fist_name, last_name, birthday, available) 
    VALUES (gen_random_uuid(), 'Fernando', 'Sosa Torres', '1996-02-14', true);

-- 2.0  INSERT INTO tablaNombre VALUES (valor1, valor2, ..., valorN);
INSERT INTO persons
    VALUES(gen_random_uuid(), 'Fernando2', 'Sosa Torres2', '1996-02-15', true);

-- 3.0 Insert into tablaNombre VALUES (DEFAULT, valorN, ValorM, ..., ValorZ);
INSERT INTO persons
    VALUES(DEFAULT, 'Fernando3',DEFAULT, DEFAULT, true);

-- 3.1 Valores por defecto
CREATE TABLE students (
    id UUID DEFAULT gen_random_uuid(),
    first_name VARCHAR(50),
    is_active BOOL DEFAULT TRUE,
    create_at TIMESTAMP DEFAULT NOW()
);

INSERT INTO  students 
    VALUES(DEFAULT, 'Panfilo',DEFAULT, DEFAULT);

--  4.0 Insert into tabla VALUES (VlalorA1, ..., valorAn), (ValorB1, ..., valorBn);
--  SI queremos insertar varios elementos en un INSERT

INSERT INTO students
    VALUES
        (DEFAULT, 'pepe', DEFAULT, DEFAULT),
        (DEFAULT, 'Armando', DEFAULT, DEFAULT),
        (DEFAULT, 'Anacleto', DEFAULT, DEFAULT),
        (DEFAULT, 'Panfilo', DEFAULT, DEFAULT);

INSERT INTO students (first_name, create_at)
    VALUES
        ('Juan','2021-06-01'),
        ('Panfilo', '2022-05-04');

-- Insert into tabla SELECT your query;
CREATE TABLE nv_students (
    id UUID ,
    f_name VARCHAR(50),
    active BOOL
);

INSERT INTO students (first_name, is_active) 
    SELECT f_name, active 
        FROM nv_students;

-- Eliminando la tabla
DROP TABLE students;

-- Datos Nulos, si queremos que no sean nulos los campos, tenemos que colocarles NOT NULL
CREATE TABLE students (
    id UUID DEFAULT gen_random_uuid() NOT NULL,
    first_name VARCHAR(50) NOT NULL,
    is_active BOOL NOT NULL,
    create_at TIMESTAMP DEFAULT now() NOT NULL,
    update_at TIMESTAMP
);