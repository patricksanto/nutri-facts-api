json.array! @foods do |food|
  json.extract! food, :id, :name, :food_group_id
end
