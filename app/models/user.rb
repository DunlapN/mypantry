class User < ApplicationRecord
  # Direct associations

  has_many   :pantry_items,
             :dependent => :destroy

  has_many   :ratings,
             :dependent => :destroy

  has_many   :favorites,
             :dependent => :destroy

  # Indirect associations

  has_many   :favorited_recipes,
             :through => :favorites,
             :source => :recipe

  has_many   :foods,
             :through => :pantry_items,
             :source => :food

  # Validations

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
