import psycopg


def create_connection():

    connection = psycopg.connect(
        dbname="immotrust_db",
        user="louismartindunord",
        host="localhost",
        port=5432,
        # utile si vous avez créer votre utilisateur avec password
        # password="mon_mot_de_passe",
    )

    return connection
