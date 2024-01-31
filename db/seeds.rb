# db/seeds.rb

# Primeiro, criamos ou encontramos os FoodGroups
food_groups = {
  "Frutas" => FoodGroup.find_or_create_by(name: "Frutas"),
  "Legumes" => FoodGroup.find_or_create_by(name: "Legumes"),
  "Carnes" => FoodGroup.find_or_create_by(name: "Carnes"),
  "Laticínios" => FoodGroup.find_or_create_by(name: "Laticínios"),
  "Grãos" => FoodGroup.find_or_create_by(name: "Grãos"),
  "Doces" => FoodGroup.find_or_create_by(name: "Doces")
}

# Em seguida, adicionamos alguns alimentos
foods = [
  { name: "Maçã", calories: 52, proteins: 0.3, carbo: 14, fats: 0.2, food_group: food_groups["Frutas"] },
  { name: "Cenoura", calories: 41, proteins: 0.9, carbo: 10, fats: 0.2, food_group: food_groups["Legumes"] },
  { name: "Frango", calories: 239, proteins: 27, carbo: 0, fats: 14, food_group: food_groups["Carnes"] },
  { name: "Queijo", calories: 402, proteins: 25, carbo: 1.3, fats: 33, food_group: food_groups["Laticínios"] },
  { name: "Arroz", calories: 130, proteins: 2.7, carbo: 28, fats: 0.3, food_group: food_groups["Grãos"] },
  { name: "Chocolate", calories: 546, proteins: 4.9, carbo: 61, fats: 31, food_group: food_groups["Doces"] }
]

foods.each do |food_attrs|
  Food.find_or_create_by(name: food_attrs[:name]) do |food|
    food.calories = food_attrs[:calories]
    food.proteins = food_attrs[:proteins]
    food.carbo = food_attrs[:carbo]
    food.fats = food_attrs[:fats]
    food.food_group = food_attrs[:food_group]
  end
end
