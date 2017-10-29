class DeleteImageIdFrom < ActiveRecord::Migration[5.1]
  def change
    remove_column :weapons, :image_id, :string
  end
end
