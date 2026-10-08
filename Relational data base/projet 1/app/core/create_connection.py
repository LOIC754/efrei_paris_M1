import psycopg


def create_connection():

    connection = psycopg.connect(
        dbname="immotrust_db1",
        user="loic_efrei",
        host="localhost",
        port=5432,
        password="Merelouise2024@",
        # utile si vous avez créer votre utilisateur avec password
        # password="mon_mot_de_passe",
    )

    return connection
