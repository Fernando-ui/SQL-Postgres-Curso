SELECT * FROM  trabajadores;
SELECT * FROM  alumnos;
SELECT * FROM  profesores;

INSERT INTO profesores VALUES( DEFAULT, )

CREATE TABLE profesores (
    id UUID DEFAULT gen_random_uuid() NOT NULL,
    person_id UUID NOT NULL,
    job_name VARCHAR(50) NOT NULL,
    create_at TIMESTAMP DEFAULT now() NOT NULL,
    update_at TIMESTAMP
);

CREATE TABLE jobs (
    id UUID DEFAULT gen_random_uuid() NOT NULL,
    person_id UUID NOT NULL,
    job_name VARCHAR(50) NOT NULL,
    create_at TIMESTAMP DEFAULT now() NOT NULL,
    update_at TIMESTAMP,
    CONSTRAINT jobs_id_pk PRIMARY KEY (id),
    CONSTRAINT jobs_profesores_id_fk FOREIGN KEY (person_id )
        REFERENCES profesores (id)
        ON UPDATE RESTRICT
        ON DELETE RESTRICT
);

