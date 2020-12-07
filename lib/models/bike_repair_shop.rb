class BikeRepairShop < ActiveRecord::Base
  has_many :appointments
  has_many :bike_inventories
  has_many :cyclists, through: :appointments
end