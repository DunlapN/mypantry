class AddFavoriteCountToRecipes < ActiveRecord::Migration[5.0]
  def change
    add_column :recipes, :favorites_count, :integer
  end
end
