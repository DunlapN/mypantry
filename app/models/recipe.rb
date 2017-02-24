class Recipe < ApplicationRecord
  # Direct associations

  has_many   :favorites,
             :dependent => :destroy

  has_many   :ingredients,
             :dependent => :destroy

  has_many   :ratings,
             :dependent => :destroy

  # Indirect associations

  # Validations

  validates :creator, :presence => true

  validates :description, :presence => true

  validates :image, :presence => true

  validates :name, :presence => true

end
