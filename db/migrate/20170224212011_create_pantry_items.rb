class CreatePantryItems < ActiveRecord::Migration
  def change
    create_table :pantry_items do |t|
      t.integer :food_id
      t.integer :user_id
      t.float :quantity

      t.timestamps

    end
  end
end
