json.extract! @food_group, :id, :name
json.foods @food_group.foods do |food|
  json.extract! food, :id, :name
end
