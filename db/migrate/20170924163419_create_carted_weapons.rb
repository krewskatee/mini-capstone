class CreateCartedWeapons < ActiveRecord::Migration[5.1]
  def change
    create_table :carted_weapons do |t|
      t.integer :user_id
      t.integer :weapon_id
      t.integer :quantity
      t.string :status
      t.integer :order_id

      t.timestamps
    end
  end
end
