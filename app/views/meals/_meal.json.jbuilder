json.extract! meal, :id, :user_id, :calories, :carbs, :sodium, :iron, :sugar, :fat, :date, :created_at, :updated_at
json.url meal_url(meal, format: :json)
