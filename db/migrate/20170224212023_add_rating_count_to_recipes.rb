class AddRatingCountToRecipes < ActiveRecord::Migration[5.0]
  def change
    add_column :recipes, :ratings_count, :integer
  end
end
