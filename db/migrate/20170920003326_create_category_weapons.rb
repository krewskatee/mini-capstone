class CreateCategoryWeapons < ActiveRecord::Migration[5.1]
  def change
    create_table :category_weapons do |t|

      t.timestamps
    end
  end
end
