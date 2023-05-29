import json
import psycopg2

# Dados de conexão com o banco de dados PostgreSQL
pg_host = 'localhost'
pg_port = 5432
pg_database = 'postgres'
pg_user = 'postgres'
pg_password = 'postgres'

# Conectando-se ao banco de dados PostgreSQL
conn = psycopg2.connect(
    host=pg_host,
    port=pg_port,
    database=pg_database,
    user=pg_user,
    password=pg_password
)

# Criação do cursor para executar consultas SQL
cursor = conn.cursor()

# Cria ordem das tabelas que serão copiadas
tables = [('depositos',), ('produtos',), ('movimentacoes',)]

# Dicionário para armazenar os dados convertidos em formato JSON
data = {}

# Iterando sobre as tabelas
for table in tables:
    table_name = table[0]
    # Consulta SQL para obter os dados da tabela
    cursor.execute(f"SELECT * FROM {table_name};")
    
    # Obtendo os nomes das colunas da tabela
    column_names = [desc[0] for desc in cursor.description]
    # Obtendo todas as linhas da tabela
    rows = cursor.fetchall()
    
    # Convertendo os dados para uma lista de dicionários
    table_data = []
    for row in rows:
        row_data = dict(zip(column_names, row))
        table_data.append(row_data)
     
    # Armazenando os dados da tabela no dicionário principal
    data[table_name] = table_data

# Iteração para criação da estrutura do JSON
for deposito in data['depositos']:
    produtos_lista = []
    for produto in data['produtos']:
        # Filtra as movimentações por depósito e produto 
        mov_filtrado = filter(lambda d: d['id_deposito'] == deposito['id_deposito'] 
                            and d['id_produto'] == produto['id_produto'], data['movimentacoes'])
        
        mov_filtrado = list(mov_filtrado)
        row_data = {'movimentacoes': mov_filtrado}
        # Juntano cabeçalho dos itens com as linhas de movimentação
        mov_prod = {**produto, **row_data}
        produtos_lista.append(mov_prod)

    deposito['produtos'] = produtos_lista

# Limpando as informações
del data['movimentacoes']
del data['produtos']


# Convertendo o dicionário principal em JSON
json_data = json.dumps(data, indent=4, default=str)

# Salvando os dados em um arquivo JSON
with open('dados.json', 'w') as json_file:
    json_file.write(json_data)

# Fechando a conexão com o banco de dados
cursor.close()
conn.close()
