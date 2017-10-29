class RemoveImageUrlFromWeapons < ActiveRecord::Migration[5.1]
  def change
    remove_column :weapons, :image_url, :string
  end
end
