--  Insert into tabla (campo1, campo2, ..., campoN) VALUES(valor1, ..., valorN);
INSERT INTO persons (id,fist_name, last_name, birthday, available) 
    VALUES (gen_random_uuid(), 'Fernando', 'Sosa Torres', '1996-02-14', true);