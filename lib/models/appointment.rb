class Appointment < ActiveRecord::Base
  belongs_to :cyclist
  belongs_to :bike_repair_shop
end