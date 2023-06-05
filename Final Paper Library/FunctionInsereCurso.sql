-- Criando função de inserção na tabela Curso com tratamento de duplicações
CREATE FUNCTION INSERE_CURSO (ID NUMERIC(10), NOME VARCHAR(50))
RETURNS NUMERIC AS $$
BEGIN

    IF EXISTS(SELECT id_curso FROM Curso WHERE id_curso = ID) THEN
        RETURN -999;
    ELSIF EXISTS (SELECT id_curso FROM Curso WHERE nome_curso = NOME) THEN
        RETURN -998;
    ELSE 
        INSERT INTO Curso (id_curso, nome_curso) 
        VALUES (ID, NOME);
        RETURN 0;
    END IF;
END;
$$ LANGUAGE plpgsql;

-- Validando Funcionalidade
SELECT INSERE_CURSO(1, 'Sistemas Biomédicos');
SELECT * FROM CURSO;
SELECT INSERE_CURSO(6, 'Sistemas Biomédicos');
SELECT * FROM CURSO;
SELECT INSERE_CURSO(6, 'Data Science');
SELECT * FROM CURSO;
