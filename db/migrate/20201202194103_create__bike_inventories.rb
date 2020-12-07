class CreateBikeInventories < ActiveRecord::Migration[5.2]
  def change
    create_table :bike_inventories do |t|
      t.string :brand
      t.float :price
      t.integer :bike_inventory_shop_id
    end
  end
end
