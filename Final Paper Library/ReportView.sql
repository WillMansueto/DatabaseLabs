-- Relatório:
CREATE VIEW VW_TCC_COMPLETO AS
SELECT
    T2.registro_academico,
    T2.nome nome_aluno,
    T3.nome_curso,
    T2.ano_semestre_ingresso,
    T2.ano_semestre_conclusao,
    T1.titulo,
    T1.nome_arquivo,
    T1.data_hora_apresentacao,
    X1.nome professor_orientador,
    X2.nome professor_banca_1,
    X3.nome professor_banca_2
FROM banca T0 
INNER JOIN TCC T1       ON T0.id_tcc        = T1.id_tcc
INNER JOIN aluno T2     ON T1.id_aluno      = T2.id_aluno
INNER JOIN curso T3     ON T2.id_curso      = T3.id_curso
INNER JOIN professor X1 ON T1.id_orientador = X1.id_professor
INNER JOIN professor X2 ON T0.id_professor1 = X2.id_professor
INNER JOIN professor X3 ON T0.id_professor2 = X3.id_professor;
