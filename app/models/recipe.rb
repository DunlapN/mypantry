class Recipe < ApplicationRecord
  mount_uploader :image, ImageUploader

  # Direct associations

  has_many   :favorites,
             :dependent => :destroy

  has_many   :ingredients,
             :dependent => :destroy

  has_many   :ratings,
             :dependent => :destroy

  # Indirect associations

  has_many   :users,
             :through => :ratings,
             :source => :user

  has_many   :favorite_users,
             :through => :favorites,
             :source => :user

  has_many   :foods,
             :through => :ingredients,
             :source => :food_item

  # Validations

  validates :creator, :presence => true

  validates :description, :presence => true

  validates :image, :presence => true

  validates :name, :presence => true

end
