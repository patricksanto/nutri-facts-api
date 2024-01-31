json.array! @foods do |food|
  json.extract! food, :id, :name, :calories, :carbo, :proteins, :fats, :food_group_id
end
