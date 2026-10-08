import pandas as pd

from core.connexion import create_connection


def get_logement():

    sql_file = __file__.replace("utils/get_logement.py", "data/get_logement.sql")

    print(f"Lecture du fichier : {sql_file}")

    with open(sql_file, "r", encoding="utf-8") as file:
        sql_query = file.read()

    connection = create_connection()

    try:
        with connection.cursor() as cursor:

            cursor.execute(sql_query)

            rows = cursor.fetchall()

            columns = [description.name for description in cursor.description]

        df = pd.DataFrame(rows, columns=columns)

        return df

    except Exception as error:
        print(f"Erreur : {error}")

    finally:
        connection.close()
