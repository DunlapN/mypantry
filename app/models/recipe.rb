class Recipe < ApplicationRecord
  # Direct associations

  # Indirect associations

  # Validations

  validates :creator, :presence => true

  validates :description, :presence => true

  validates :image, :presence => true

  validates :name, :presence => true

end
