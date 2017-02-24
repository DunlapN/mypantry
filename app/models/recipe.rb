class Recipe < ApplicationRecord
  # Direct associations

  # Indirect associations

  # Validations

  validates :description, :presence => true

  validates :image, :presence => true

  validates :name, :presence => true

end
