class Food < ApplicationRecord
  # Direct associations

  has_many   :pantry_items,
             :dependent => :destroy

  has_many   :ingredients,
             :dependent => :destroy

  # Indirect associations

  has_many   :users,
             :through => :pantry_items,
             :source => :user

  has_many   :recipes,
             :through => :ingredients,
             :source => :recipe

  # Validations

  validates :name, :uniqueness => true

  validates :name, :presence => true

end
