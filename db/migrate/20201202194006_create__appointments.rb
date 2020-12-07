class CreateAppointments < ActiveRecord::Migration[5.2]
  def change
    create_table :appointments do |t|
      t.string :date
      t.integer :cyclist_id
      t.integer :bike_repair_shop_id
      t.float :repair_cost
      t.string :repair
    end
  end
end
