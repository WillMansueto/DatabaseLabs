-- Limpeza das tabelas
DROP VIEW vw_relatorio_estoque;
DROP TABLE movimentacoes;
DROP TABLE produtos;
DROP TABLE depositos;

-- Criação das tabelas:
CREATE TABLE depositos (
    id_deposito     NUMBER(10) PRIMARY KEY,
    nome_deposito  VARCHAR2(50)
);

CREATE TABLE produtos (
    id_produto      NUMBER(10) PRIMARY KEY,
    nome_produto    VARCHAR2(50)
);

CREATE TABLE movimentacoes (
    id_movimentacao         NUMBER(10) PRIMARY KEY,
    id_produto              NUMBER(10),
    id_deposito             NUMBER(10),
    tipo_movimentacao       CHAR(1),
    quantidade_movimentada  NUMBER(10),
    valor_unitario          NUMBER(10,2),
    valor_total_movimentado NUMBER(10,2) GENERATED ALWAYS AS (quantidade_movimentada * valor_unitario),
    data_movimentacao       DATE,
    FOREIGN KEY (id_deposito) REFERENCES depositos(id_deposito),
    FOREIGN KEY (id_produto) REFERENCES produtos(id_produto),
    CONSTRAINT ck_tipo_movimentacao CHECK (tipo_movimentacao IN('I', 'O'))
);

-- Inserindo valores na tabela depósitos:
INSERT INTO depositos (id_deposito, nome_deposito) VALUES (1, 'SP');
INSERT INTO depositos (id_deposito, nome_deposito) VALUES (2, 'RJ');
INSERT INTO depositos (id_deposito, nome_deposito) VALUES (3, 'MG');

-- Inserindo alguns produtos na tabela "produtos"
INSERT INTO produtos (id_produto, nome_produto) VALUES (1, 'Vinho Tinto');
INSERT INTO produtos (id_produto, nome_produto) VALUES (2, 'Vinho branco');
INSERT INTO produtos (id_produto, nome_produto) VALUES (3, 'Vinho rosé');
INSERT INTO produtos (id_produto, nome_produto) VALUES (4, 'Espumante');
INSERT INTO produtos (id_produto, nome_produto) VALUES (5, 'Vinho licoroso');


-- Inserindo algumas movimentações na tabela "movimentacoes"
INSERT INTO movimentacoes (id_movimentacao, id_produto, id_deposito, tipo_movimentacao, quantidade_movimentada, valor_unitario, data_movimentacao)
VALUES (1,  1, 1, 'I', 51, 23.00, TO_DATE('2023-01-01', 'YYYY-MM-DD'));
INSERT INTO movimentacoes (id_movimentacao, id_produto, id_deposito, tipo_movimentacao, quantidade_movimentada, valor_unitario, data_movimentacao)
VALUES (2,  2, 1, 'I', 15, 20.00, TO_DATE('2023-01-01', 'YYYY-MM-DD'));
INSERT INTO movimentacoes (id_movimentacao, id_produto, id_deposito, tipo_movimentacao, quantidade_movimentada, valor_unitario, data_movimentacao)
VALUES (3,  3, 1, 'I', 10, 25.00, TO_DATE('2023-01-01', 'YYYY-MM-DD'));
INSERT INTO movimentacoes (id_movimentacao, id_produto, id_deposito, tipo_movimentacao, quantidade_movimentada, valor_unitario, data_movimentacao)
VALUES (4,  4, 1, 'I', 32, 40.00, TO_DATE('2023-01-01', 'YYYY-MM-DD'));
INSERT INTO movimentacoes (id_movimentacao, id_produto, id_deposito, tipo_movimentacao, quantidade_movimentada, valor_unitario, data_movimentacao)
VALUES (5,  5, 1, 'I', 8,  35.00, TO_DATE('2023-01-01', 'YYYY-MM-DD'));
INSERT INTO movimentacoes (id_movimentacao, id_produto, id_deposito, tipo_movimentacao, quantidade_movimentada, valor_unitario, data_movimentacao)
VALUES (6,  1, 2, 'I', 37, 23.00, TO_DATE('2023-01-01', 'YYYY-MM-DD'));
INSERT INTO movimentacoes (id_movimentacao, id_produto, id_deposito, tipo_movimentacao, quantidade_movimentada, valor_unitario, data_movimentacao)
VALUES (7,  2, 2, 'I', 35, 20.00, TO_DATE('2023-01-01', 'YYYY-MM-DD'));
INSERT INTO movimentacoes (id_movimentacao, id_produto, id_deposito, tipo_movimentacao, quantidade_movimentada, valor_unitario, data_movimentacao)
VALUES (8,  3, 2, 'I', 18, 25.00, TO_DATE('2023-01-01', 'YYYY-MM-DD'));
INSERT INTO movimentacoes (id_movimentacao, id_produto, id_deposito, tipo_movimentacao, quantidade_movimentada, valor_unitario, data_movimentacao)
VALUES (9,  4, 2, 'I', 17, 40.00, TO_DATE('2023-01-01', 'YYYY-MM-DD'));
INSERT INTO movimentacoes (id_movimentacao, id_produto, id_deposito, tipo_movimentacao, quantidade_movimentada, valor_unitario, data_movimentacao)
VALUES (10, 5, 2, 'I', 3,  35.00, TO_DATE('2023-01-01', 'YYYY-MM-DD'));
INSERT INTO movimentacoes (id_movimentacao, id_produto, id_deposito, tipo_movimentacao, quantidade_movimentada, valor_unitario, data_movimentacao)
VALUES (11, 1, 3, 'I', 23, 23.00, TO_DATE('2023-01-01', 'YYYY-MM-DD'));
INSERT INTO movimentacoes (id_movimentacao, id_produto, id_deposito, tipo_movimentacao, quantidade_movimentada, valor_unitario, data_movimentacao)
VALUES (12, 2, 3, 'I', 15, 20.00, TO_DATE('2023-01-01', 'YYYY-MM-DD'));
INSERT INTO movimentacoes (id_movimentacao, id_produto, id_deposito, tipo_movimentacao, quantidade_movimentada, valor_unitario, data_movimentacao)
VALUES (13, 3, 3, 'I', 27, 25.00, TO_DATE('2023-01-01', 'YYYY-MM-DD'));
INSERT INTO movimentacoes (id_movimentacao, id_produto, id_deposito, tipo_movimentacao, quantidade_movimentada, valor_unitario, data_movimentacao)
VALUES (14, 4, 3, 'I', 17, 40.00, TO_DATE('2023-01-01', 'YYYY-MM-DD'));
INSERT INTO movimentacoes (id_movimentacao, id_produto, id_deposito, tipo_movimentacao, quantidade_movimentada, valor_unitario, data_movimentacao)
VALUES (15, 5, 3, 'I', 12, 35.00, TO_DATE('2023-01-01', 'YYYY-MM-DD'));

INSERT INTO movimentacoes (id_movimentacao, id_produto, id_deposito, tipo_movimentacao, quantidade_movimentada, valor_unitario, data_movimentacao)
VALUES (16, 4, 3, 'I', 20, 30.00, TO_DATE('2023-01-01', 'YYYY-MM-DD'));

-- Relatório de Custo Médio Móvel
CREATE VIEW vw_relatorio_estoque AS(
    SELECT X0.*, X0.val_acum/X0.qtd_acum CMM FROM(
        SELECT
            id_movimentacao,
            nome_deposito,
            nome_produto,
            CASE tipo_movimentacao
                WHEN 'I' THEN 'Entrada'
                WHEN 'O' THEN 'Saída'
            END tipo_movimentacao,
            quantidade_movimentada,
            valor_unitario,
            data_movimentacao,
            valor_total_movimentado,
            SUM(valor_total_movimentado) OVER (PARTITION BY nome_deposito, nome_produto ORDER BY id_movimentacao) val_acum,
            SUM(quantidade_movimentada) OVER (PARTITION BY nome_deposito, nome_produto ORDER BY id_movimentacao) qtd_acum
        FROM movimentacoes T0
        INNER JOIN produtos T1 ON T0.id_produto = T1.id_produto
        INNER JOIN depositos T2 ON T0.id_deposito = T2.id_deposito
    ) X0
);
