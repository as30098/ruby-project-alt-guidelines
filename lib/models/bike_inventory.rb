class BikeInventory < ActiveRecord::Base
  belongs_to :bike_repair_shop
end