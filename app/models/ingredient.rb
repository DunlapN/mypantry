class Ingredient < ApplicationRecord
  # Direct associations

  belongs_to :food_item,
             :class_name => "Food",
             :foreign_key => "food_id",
             :counter_cache => true

  belongs_to :recipe,
             :counter_cache => true

  # Indirect associations

  # Validations

end
