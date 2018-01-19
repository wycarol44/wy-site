class CreateMeals < ActiveRecord::Migration[5.0]
  def change
    create_table :meals do |t|
      t.integer :user_id
      t.integer :calories
      t.integer :carbs
      t.integer :sodium
      t.integer :iron
      t.integer :sugar
      t.integer :fat
      t.datetime :date

      t.timestamps
    end
  end
end
