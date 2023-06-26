class CreateRestaurantPizzas < ActiveRecord::Migration[7.0]
  def change
    create_table :restaurant_pizzas do |t|
      t.integer :price
      t.belongs_to :pizza, null: false, foreign_key: true
      t.belongs_to :restaurant
      
      t.timestamps
    end
  end
end
