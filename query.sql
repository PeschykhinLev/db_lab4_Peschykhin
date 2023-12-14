-- Значення кількості протеїну у страві та її назва
SELECT Meal.item_name, Nutritional_Information.protein
FROM Meal
JOIN Nutritional_Information ON Meal.item_id = Nutritional_Information.item_id
ORDER BY protein

-- Категорія страви, які мають від 100 калорій та кількість цих калорій
SELECT Category.category_name, Nutritional_Information.Calories
FROM Category
JOIN Meal_Category ON Category.category_id = Meal_Category.category_id
JOIN Nutritional_Information ON Meal_Category.item_id = Nutritional_Information.item_id
WHERE Nutritional_Information.Calories > 100
ORDER BY Calories;

-- Назва страви, та впорядковане порівняння (за зростаннія) її кількості калорій та % від денної форми жирів
SELECT Meal.item_name, Nutritional_Information.Calories, Daily_Values_on_the_Nutrition.Total_Fat_Daily_Percentage
FROM Meal
JOIN Meal_Category ON Meal.item_id = Meal_Category.category_id
JOIN Nutritional_Information ON Meal.item_id = Nutritional_Information.item_id
JOIN Daily_Values_on_the_Nutrition ON Meal.item_id = Daily_Values_on_the_Nutrition.item_id
ORDER BY Nutritional_Information.Calories;