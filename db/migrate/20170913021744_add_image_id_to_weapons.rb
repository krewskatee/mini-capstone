class AddImageIdToWeapons < ActiveRecord::Migration[5.1]
  def change
    add_column :weapons, :image_id, :string
  end
end
