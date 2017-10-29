class User < ApplicationRecord
  has_secure_password
  has_many :orders
  has_many :carted_weapons

  validates :email, uniqueness: true

  def current_cart
    carted_weapons.where(status: "carted")
  end

end
