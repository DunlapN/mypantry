class Favorite < ApplicationRecord
  # Direct associations

  belongs_to :recipe,
             :counter_cache => true

  # Indirect associations

  # Validations

  validates :recipe_id, :presence => true

  validates :user_id, :presence => true

end
