CREATE TABLE Meal
(
  item_id SERIAL PRIMARY KEY,
  item_name VARCHAR(100) NOT NULL
);

CREATE TABLE Category
(
  category_id SERIAL PRIMARY KEY,
  category_name VARCHAR(100) NOT NULL
);

CREATE TABLE Meal_Category
(
  item_id INT NOT NULL,
  category_id INT NOT NULL,
  FOREIGN KEY (item_id) REFERENCES Meal(item_id),
  FOREIGN KEY (category_id) REFERENCES Category(category_id)
);

CREATE TABLE Nutritional_Information
(
  Calories INT NOT NULL,
  Calories_from_Fat INT NOT NULL,
  Total_Fat INT NOT NULL,
  Saturated_Fat INT NOT NULL,
  Cholesterol INT NOT NULL,
  Sodium INT NOT NULL,
  Carbohydrates INT NOT NULL,
  Dietary_Fiber INT NOT NULL,
  Sugars INT NOT NULL,
  Protein INT NOT NULL,
  item_id INT NOT NULL,
  PRIMARY KEY (item_id),
  FOREIGN KEY (item_id) REFERENCES Meal(item_id)
);

CREATE TABLE Daily_Values_on_the_Nutrition
(
  Total_Fat_Daily_Percentage INT NOT NULL,
  Saturated_Fat_Daily_Percentage INT NOT NULL,
  Cholesterol_Daily_Percentage INT NOT NULL,
  Sodium_Daily_Percentage INT NOT NULL,
  Carbohydrates_Daily_Percentage INT NOT NULL,
  Dietary_Fiber_Daily_Percentage INT NOT NULL,
  Vitamin_A_Daily_Percentage INT NOT NULL,
  Vitamin_C_Daily_Percentage INT NOT NULL,
  Calcium_Daily_Percentage INT NOT NULL,
  Iron_Daily_Percentage INT NOT NULL,
  item_id INT NOT NULL,
  PRIMARY KEY (item_id),
  FOREIGN KEY (item_id) REFERENCES Meal(item_id)
);

CREATE TABLE Serving_Size_Table
(
  Ounces INT NOT NULL,
  Grams INT NOT NULL,
  item_id INT NOT NULL,
  PRIMARY KEY (item_id),
  FOREIGN KEY (item_id) REFERENCES Meal(item_id)