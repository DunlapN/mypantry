class AddIngredientCountToFoods < ActiveRecord::Migration[5.0]
  def change
    add_column :foods, :ingredients_count, :integer
  end
end
