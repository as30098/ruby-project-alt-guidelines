class CreateBikeRepairShops < ActiveRecord::Migration[5.2]
  def change
    create_table :bike_repair_shops do |t|
      t.string :neighborhood
      t.string :shop_name
      t.string :brand_for_sale
    end
  end
end
