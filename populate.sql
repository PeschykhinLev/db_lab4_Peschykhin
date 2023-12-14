INSERT INTO Meal (item_name)
VALUES
('Egg McMuffin'),
('Big Mac'),
('Bacon Cheddar McChicken'),
('Premium Bacon Ranch Salad (without Chicken)'),
('Honey Mustard Snack Wrap (Grilled Chicken)');

INSERT INTO Category (category_name)
VALUES
('Breakfast'),
('Beef & Pork'),
('Chicken & Fish'),
('Salads'),
('Snacks & Sides');

INSERT INTO Meal_Category (item_id, category_id)
VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5);

INSERT INTO Nutritional_Information (Calories, Calories_from_Fat, Total_Fat, Saturated_Fat, Cholesterol, Sodium, Carbohydrates,
Dietary_Fiber, Sugars, Protein, item_id)
VALUES
(300, 120, 13, 5, 260, 750, 31, 4, 3, 17, 1),
(530, 240, 27, 10, 85, 960, 47, 3, 9, 24, 2),
(480, 220, 24, 7, 65, 1260, 43, 2, 6, 22, 3),
(140, 70, 7, 3.5, 25, 300, 10, 3, 4, 9, 4),
(330, 130, 15, 4.5, 35, 730, 34, 1, 3, 14, 5);

INSERT INTO Daily_Values_on_the_Nutrition (Total_Fat_Daily_Percentage, Saturated_Fat_Daily_Percentage,
Cholesterol_Daily_Percentage, Sodium_Daily_Percentage, Carbohydrates_Daily_Percentage,
Dietary_Fiber_Daily_Percentage, Vitamin_A_Daily_Percentage, Vitamin_C_Daily_Percentage,
Calcium_Daily_Percentage, Iron_Daily_Percentage, item_id)
VALUES
(20, 25, 87, 31, 10, 17, 10, 0, 25, 15, 1),
(42, 48, 28, 40, 16, 13, 6, 2, 25, 25, 2),
(38, 35, 21, 53, 14, 8, 4, 10, 20, 15, 3),
(11, 18, 9, 13, 3, 12, 170, 30, 15, 6, 4),
(23, 22, 11, 30, 11, 5, 2, 0, 10, 10, 5);

INSERT INTO Serving_Size_Table (Ounces, Grams, item_id)
VALUES
(4.8, 136, 1),
(7.4, 211, 2),
(6, 171, 3),
(7.9, 223, 4),
(4.3, 123, 5);