class CartedWeapon < ApplicationRecord
  belongs_to :weapon
  belongs_to :order, optional: true
  belongs_to :user

  validates :quantity, presence: true
  validates :quantity, numericality: { only_integer: true, greater_than: 0  }
  validates :quantity, numericality: { greater_than: 0 }

  def subtotal
    weapon.price * quantity
  end

end
