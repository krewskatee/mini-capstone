class MakeChangesToWeapons < ActiveRecord::Migration[5.1]
  def change
    change_column :weapons, :price, "numeric USING CAST(price AS numeric)", precision: 7, scale: 2
    change_column :weapons, :description, :text
    add_column :weapons, :stock, :boolean
  end
end
