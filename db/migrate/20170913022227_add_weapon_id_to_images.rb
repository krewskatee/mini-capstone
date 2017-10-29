class AddWeaponIdToImages < ActiveRecord::Migration[5.1]
  def change
    add_column :images, :weapon_id, :string
  end
end
