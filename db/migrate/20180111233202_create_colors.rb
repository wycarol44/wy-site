class CreateColors < ActiveRecord::Migration
  def change
    create_table :colors do |t|
      t.string :name
      t.string :hex
      t.integer :theme_id

      t.timestamps null: false
    end
  end
end
