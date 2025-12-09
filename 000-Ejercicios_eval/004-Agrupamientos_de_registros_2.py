#Caso por barras

import mysql.connector 
import matplotlib.pyplot as pt

conexion = mysql.connector.connect(
    host="localhost",user="bryan",password="Clientes123$",database="personas"
)                                      
cursor = conexion.cursor() 

cursor.execute('''SELECT 
                  COUNT(stock) AS numero,
                  stock
                  FROM productos
                  GROUP BY stock
                  ORDER BY numero DESC;''') 

filas = cursor.fetchall()

etiquetas = [
    'Baguette',
    'Fruit Salad',
    'Chicken Stir-Fry',
    'Apple Crisp',
    'Pasta with Tomato Sauce',
    'Veggie Burger',
    'Fish Tacos',
    'Guacamole Bowl',
    'Vegetable Soup',
    'Cheese Omelette',
    'Grilled Chicken Wrap',
    'Salad with Tuna Fish',
    'Mixed Vegetables Stir-Fry',
    'Beef Fajita',
    'Tomato and Mozzarella Pizza'
]

peso = [
    0.25,
    1.75,
    2.20,
    0.75,
    1.20,
    0.50,
    0.80,
    1.60,
    0.75,
    1.25,
    0.90,
    1.40,
    1.10,
    0.95,
    1.70
]

for fila in filas:
    peso.append(fila[0])
    etiquetas.append(fila[1])

print(peso)
print(etiquetas)

pt.bar(peso, height=30)
pt.figure(figsize=(12, 6))
pt.xlabel("Products")
pt.ylabel("Weight (kg)")
pt.xticks(rotation=45, ha='right')
pt.show()