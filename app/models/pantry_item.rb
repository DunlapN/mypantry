class PantryItem < ApplicationRecord
  # Direct associations

  belongs_to :food,
             :counter_cache => true

  belongs_to :user,
             :counter_cache => true

  # Indirect associations

  # Validations

end
