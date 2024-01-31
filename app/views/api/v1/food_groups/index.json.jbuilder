json.array! @food_groups do |food_group|
  json.extract! food_group, :id, :name
end
