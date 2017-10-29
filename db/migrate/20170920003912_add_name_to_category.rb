class AddNameToCategory < ActiveRecord::Migration[5.1]
  def change
    add_column :categories, :name, :string
    add_column :category_weapons, :weapon_id, :integer
    add_column :category_weapons, :category_id, :integer
  end
end
