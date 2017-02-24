class AddPantryItemCountToFoods < ActiveRecord::Migration[5.0]
  def change
    add_column :foods, :pantry_items_count, :integer
  end
end
