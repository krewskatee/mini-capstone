class Category < ApplicationRecord
  has_many :category_weapons
  has_many :weapons, through: :category_weapons

  validates :name, uniqueness: true

end
