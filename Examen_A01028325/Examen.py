import mysql.connector
import names
import datetime
from pytz import timezone
from random import randint
import random

wordList = [
    "Crazy",
    "Innocent",
    "Reapers",
    "Curvy",
    "Bold",
    "Gargoyles",
    "Fleshy",
    "Live",
    "Sirens",
    "Flirty",
    "Cute",
    "Zombies",
    "Kinky",
    "Brunette",
    "Ghosts",
    "Lusty",
    "Wild",
    "Demons",
    "Steamy",
    "Ancient",
    "Angels",
    "Sultry",
    "Blonde",
    "Mummies",
]

categoriaList = [
    "miedeo",
    "suspenso",
    "Reapers",
    "fantasia",
    "si-fy",
    "accion",
    "novela",
    "dramático",
    "cuento",
    "Parodia",
]


def getTitulo():
    titulo = (
        wordList[randint(0, 100) % len(wordList)]
        + " "
        + wordList[randint(0, 100) % len(wordList)]
    )
    return titulo


try:
    cnx = mysql.connector.connect(
        user="root", password="42admin", host="127.0.0.1", database="Biblioteca"
    )
    cursor = cnx.cursor(buffered=True)
    listOfNames = []
    usedTitles = []

    for _ in range(10):
        fn = names.get_first_name()
        ln = names.get_last_name()
        listOfNames.append([fn, ln])
        query = f'INSERT INTO Autores(nombre, apellido) values("{fn}", "{ln}");'
        cursor.execute(query)

    for i in range(10):
        query = f'INSERT INTO Tags(tag) values("{categoriaList[i]}");'
        cursor.execute(query)

    for _ in range(100):
        start_date = datetime.date(2020, 1, 1)
        end_date = datetime.date(2020, 2, 1)
        time_between_dates = end_date - start_date
        days_between_dates = time_between_dates.days
        random_number_of_days = random.randrange(days_between_dates)
        random_date = start_date + datetime.timedelta(days=random_number_of_days)

        fechaHoraFormato = random_date.strftime("%Y-%m-%d")
        titulo = getTitulo()
        while titulo in usedTitles:
            titulo = getTitulo()
        usedTitles.append(titulo)
        query = f'INSERT INTO Libros(titulo, fecha_publicacion, precio) values("{titulo}", "{fechaHoraFormato}", {randint(0, 999)});'
        cursor.execute(query)

    for i in range(100):
        print("li ", usedTitles[i])
        queryGetLibro = f"SELECT * FROM Libros WHERE titulo = '{usedTitles[i]}'"
        cursor.execute(queryGetLibro)
        id_libro = cursor.fetchone()[0]
        print(id_libro)
        print("au ", listOfNames[i % 10][0])
        queryGetAutor = f"SELECT * FROM Autores WHERE nombre = '{listOfNames[i%10][0]}'"
        cursor.execute(queryGetAutor)
        id_autor = cursor.fetchone()[0]
        print(id_autor)
        print("got")
        query = f'INSERT INTO libros_autores(id_libro, id_autor) values("{id_libro}", "{id_autor}");'
        cursor.execute(query)

    for i in range(100):
        queryGetLibro = f"SELECT * FROM Libros WHERE titulo = '{usedTitles[i]}'"
        cursor.execute(queryGetLibro)
        id_libro = cursor.fetchone()[0]

        queryGetTag = f"SELECT * FROM Tags WHERE tag = '{categoriaList[i%10]}'"
        cursor.execute(queryGetTag)
        id_tag = cursor.fetchone()[0]

        query = f'INSERT INTO libros_tags(id_libro, id_tag) values("{id_libro}", "{id_tag}");'
        cursor.execute(query)

except mysql.connector.Error as err:

    if err.errno == mysql.connector.errorcode.ER_ACCESS_DENIED_ERROR:
        print("Something is wrong with your user name or password")
    elif err.errno == mysql.connector.errorcode.ER_BAD_DB_ERROR:
        print("Database does not exist")
    else:
        print(err)

finally:
    cnx.commit()
    cnx.close()

