from pathlib import Path

from core.connexion import create_connection


def inject_data():
    sql_file = Path(__file__).parent.parent / "data" / "data_immobilier_2.sql"
    print(f"Lecture du fichier : {sql_file}")
    with open(sql_file, "r", encoding="utf-8") as file:
        sql_script = file.read()

    connection = create_connection()

    try:

        with connection.cursor() as cursor:
            cursor.execute(sql_script)
        connection.commit()
        print("Données injectées avec succès.")

    except Exception as error:
        connection.rollback()
        print(f"Erreur : {error}")

    finally:
        connection.close()
