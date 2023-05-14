import mysql.connector

import pandas as pd


class Produto:
    def __init__(self,data) -> None:
        self.id_produto = data["ID"]
        self.nome = data["Nome"]
        self.preco = float(data["Preço"].replace(".","").replace(",","."))
    
    def Insert(self,cursor):
        cursor.execute("INSERT INTO produtos "
"VALUES (%s, %s, %s);",(self.id_produto,self.nome,self.preco))
        pass



produtos_df = pd.read_csv("produtos.csv",encoding = 'ISO-8859-1')

def CriarConexao(user,password,host,database,port):
    cnx = mysql.connector.connect(user=user, password=password,
                              host=host,
                              port=port,
                              database=database)    
    return cnx





produtos = []
# csv to poo
for i,val in produtos_df.iterrows():
    produtos.append(Produto(val))


produtos_db = CriarConexao("root","123456","localhost","produtos",3306)


cursor_db = produtos_db.cursor()

for produto in produtos:
    produto.Insert(cursor_db)

produtos_db.commit()

