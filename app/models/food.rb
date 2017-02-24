class Food < ApplicationRecord
  # Direct associations

  has_many   :ingredients,
             :dependent => :destroy

  # Indirect associations

  # Validations

  validates :name, :uniqueness => true

  validates :name, :presence => true

end
