class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.string :name
      t.string :creator
      t.text :description
      t.string :instructions
      t.text :nutritional_facts
      t.string :image

      t.timestamps

    end
  end
end
