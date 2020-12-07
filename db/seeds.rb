
# Cyclist Instances

alex = Cyclist.create(name: "Alex", username: "as1995", password: "abc1234", neighborhood: "Bushwick")

parth = Cyclist.create(name: "Parth", username: "parth1990", password: "ps890", neighborhood: "Woodside")

diana = Cyclist.create(name: "Diana", username: "dc65", password: "catdog78", neighborhood: "Ridgewood")

jallen = Cyclist.create(name: "Jallen", username: "j56", password: "dogcat90", neighborhood: "LES")

sophat = Cyclist.create(name: "Sophat", username: "hm4", password: "pandadog78", neighborhood: "Williamsburg")


# Bike Repair Shops Instances

williamsburg = BikeRepairShop.create(neighborhood: "Williamsburg", shop_name: "Velo Williamsburg", brand_for_sale: "Bianchi")

bushwick = BikeRepairShop.create(neighborhood: "Bushwick", shop_name: "Velo Bushwick", brand_for_sale: "Cannondale")

woodside = BikeRepairShop.create(neighborhood: "Woodside", shop_name: "Velo Woodside", brand_for_sale: "Terry")

ridgewood = BikeRepairShop.create(neighborhood: "Ridgewood", shop_name: "Velo Ridgewood", brand_for_sale: "Schwinn")

bedstuy = BikeRepairShop.create(neighborhood: "BedStuy", shop_name: "Velo Bed Stuy", brand_for_sale: "Peugeot")

# Bike Inventories Instances

schwinn_williamsburg = BikeInventory.create(brand: "Schwinn", price: 200, bike_inventory_shop_id: williamsburg.id)

schwinn_ridgewood = BikeInventory.create(brand: "Schwinn", price: 200, bike_inventory_shop_id: ridgewood.id)

terry_woodside = BikeInventory.create(brand: "Terry", price: 300, bike_inventory_shop_id: woodside.id)

terry_bushwick = BikeInventory.create(brand: "Terry", price: 300, bike_inventory_shop_id: bushwick.id)

peugeot_bedstuy = BikeInventory.create(brand: "Peugeot", price: 400, bike_inventory_shop_id: bedstuy.id)

bianchi_williamsburg = BikeInventory.create(brand: "Bianchi", price: 500, bike_inventory_shop_id: williamsburg.id)

cannondale_bushwick = BikeInventory.create(brand: "Cannondale", price: 800, bike_inventory_shop_id: bushwick.id)

# Appointment Instances

alex_appt = Appointment.create(date: "11/11", cyclist_id: alex.id, bike_repair_shop_id: bushwick.id, repair_cost: 40, repair: "brake")

parth_appt = Appointment.create(date: "11/13", cyclist_id: parth.id, bike_repair_shop_id: woodside.id, repair_cost: 50, repair: "chain")

diana_appt = Appointment.create(date: "11/13", cyclist_id: diana.id, bike_repair_shop_id: ridgewood.id, repair_cost: 20, repair: "tire")

jallen_appt = Appointment.create(date: "11/14", cyclist_id: jallen.id, bike_repair_shop_id: williamsburg.id, repair_cost: 50, repair: "chain")

sophat_appt = Appointment.create(date: "11/15", cyclist_id: sophat.id, bike_repair_shop_id: bedstuy.id, repair_cost: 20, repair: "tire")





