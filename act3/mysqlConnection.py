import mysql.connector

try:
    cnx = mysql.connector.connect(
        user="root", password="6961Alex", host="127.0.0.1", database="smartHouse"
    )
    ##
    #
    #
    #
    #
    #
    #
    ##
    #
    #
    #
    #
    #
    #
    ##
    #
    #
    #
    #
    #
    #
    ##
    #
    #
    #
    #
    #
    #
    ##
    #
    #
    #
    #
    #
    #
    ##
    #
    #
    #
    #
    #
    #
    ##
    #
    #
    #
    #
    #
    #

    cursor = cnx.cursor()

    for i in range(0, 9):
        query_data = (
            'Hall',
            'Room Kids',
            'Kitchen',
            'Main Room',
            'Entrance',
            'Garage',
            'Bathroom Kids',
            'Bathroom gests',
            'Main Bathroom',
            'Living Room',
        )
        #print(query_data[i])
        query = f'INSERT INTO Cuarto(name) values("{query_data[i]}");'
        #query = f"SELECT * FROM Cuarto;"
        cursor.execute(query)
        
    query = f"SELECT * FROM Cuarto;"
    cursor.execute(query)
    for result in cursor:
        print(result)

except mysql.connector.Error as err:

    if err.errno == mysql.connector.errorcode.ER_ACCESS_DENIED_ERROR:
        print("Something is wrong with your user name or password")
    elif err.errno == mysql.connector.errorcode.ER_BAD_DB_ERROR:
        print("Database does not exist")
    else:
        print(err)

finally:
    cnx.close()

