json.extract! food, :id, :name, :PLU, :durability, :diet_protected, :weight, :size, :created_at, :updated_at
json.url food_url(food, format: :json)
