class Order < ApplicationRecord
  belongs_to :user, optional: true
  has_many :carted_weapons
  has_many :weapons, through: :carted_weapons
  has_many :users, through: :carted_weapons

  def calculate_subtotal
    sum = 0
    carted_weapons.each do |carted_weapon|
      sum += carted_weapon.subtotal
    end
    self.subtotal = sum
  end

  def calculate_tax
    self.tax = subtotal * 0.09
  end

  def calculate_total
    self.total = subtotal + tax
  end

  def calculate_totals
    calculate_subtotal
    calculate_tax
    calculate_total
    save
  end

end
