from json import load
from pymongo.mongo_client import MongoClient
from pymongo.server_api import ServerApi

uri = "mongodb+srv://<connect>"

# Create a new client and connect to the server
client = MongoClient(uri, server_api=ServerApi('1'))

# Abrir arquivo JSON
with open('dados.json', 'r') as json_file:
    dados = load(json_file)

db = client['estoque']
collection = db['movimentacoes']

# Inserindo documentos no MongoDB
collection.insert_one(dados)
