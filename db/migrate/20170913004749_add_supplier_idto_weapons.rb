class AddSupplierIdtoWeapons < ActiveRecord::Migration[5.1]
  def change
    add_column :weapons, :supplier_id, :integer
  end
end
