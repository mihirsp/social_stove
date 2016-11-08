class CreateFoodEvents < ActiveRecord::Migration
  def change
    create_table :food_events do |t|
      t.string :title
      t.text :description
      t.string :meal_type

      t.timestamps
    end
  end
end
