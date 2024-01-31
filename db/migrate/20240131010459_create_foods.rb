class CreateFoods < ActiveRecord::Migration[7.0]
  def change
    create_table :foods do |t|
      t.string :name
      t.integer :calories
      t.float :proteins
      t.float :carbo
      t.float :fats
      t.references :food_group, null: false, foreign_key: true

      t.timestamps
    end
  end
end
