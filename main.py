import psycopg2
import matplotlib.pyplot as plt

username = 'levpescihin'
password = 'kpi2023'
database = 'Lab_3'
host = 'localhost'
port = '5432'

query_1 = '''
SELECT Meal.item_name, Nutritional_Information.protein
FROM Meal
JOIN Nutritional_Information ON Meal.item_id = Nutritional_Information.item_id
ORDER BY protein

'''

query_2 = '''
SELECT Category.category_name, Nutritional_Information.Calories
FROM Category
JOIN Meal_Category ON Category.category_id = Meal_Category.category_id
JOIN Nutritional_Information ON Meal_Category.item_id = Nutritional_Information.item_id
WHERE Nutritional_Information.Calories > 100
ORDER BY Calories;
'''

query_3 = '''
SELECT Meal.item_name, Nutritional_Information.Calories, Daily_Values_on_the_Nutrition.Total_Fat_Daily_Percentage
FROM Meal
JOIN Meal_Category ON Meal.item_id = Meal_Category.category_id
JOIN Nutritional_Information ON Meal.item_id = Nutritional_Information.item_id
JOIN Daily_Values_on_the_Nutrition ON Meal.item_id = Daily_Values_on_the_Nutrition.item_id
ORDER BY Nutritional_Information.Calories;
'''

conn = psycopg2.connect(user=username, password=password, dbname=database, host=host, port=port)

with conn:
    cur = conn.cursor()

    cur.execute(query_1)

    print('Назва страви та кількість протеїну у неї: ')
    for row in cur:
        print(f'Cтрава: {row[0]}; Кількість протеїну: {row[1]}')

    cur.execute(query_2)

    print('\nКатегорія страви, які мають від 100 калорій та кількість цих калорій: ')
    for row in cur:
        print(f'Категорія страви: {row[0]}; Кількість калорій: {row[1]}')

    cur.execute(query_3)

    print('\nНазва страви, та впорядковане порівняння (за зростаннія) її кількості калорій та % від денної форми жирів: ')
    for row in cur:
        print(f'Cтрави: {row[0]}; Кількість калорій: {row[1]}; Кількість денної норми жирів (%): {row[2]} ')

