class Application

  @@user = nil

  attr_accessor :cyclist

  def welcome
    puts "Hello, Welcome to Velo!"
  end

  def login_or_register
    puts "Would you like to register or login?"
    answer = gets.chomp
    if answer == "login"
        login_helper
    elsif answer == "register"
        register_helper
    else
        puts "You mistyped"
    end
  end

  # login_helper
  def login_helper
    @@user = Cyclist.login_a_cyclist
  end

  # register_helper
  def register_helper
    Cyclist.register_a_cyclist
  end

  # Main Menu
  def main_menu
    cyclist.reload
    system 'clear'

    puts "Main Menu"
    puts "Please enter one of the following:"
    puts "Make Appointment"
    puts "View Appointment"
    puts "Change Appointment"
    puts "Cancel Appointment"
    puts "Reserve Bike"
    puts "All Locations"

    answer = gets.chomp
    if answer == "Make Appointment"
      puts "Please enter the following:"
      make_appointment
    elsif answer == "View Appointment"
      show_appointments
    elsif answer == "Change Appointment"
      change_appointment
    elsif answer == "Cancel Appointment"
      cancel_appointment
    elsif answer == "Reserve Bike"
      reserve_bike
    elsif answer == "All Locations"
      see_all_velo_locations
    else
      puts "You mistyped"
    end
  end

  # CREATE - make appointment
  def make_appointment
    system 'clear'
    puts "All Locations:"
    BikeRepairShop.all.each do |shop|
      puts "#{shop.id}. #{shop.shop_name}"
    end

    puts "What is your preferred date? MM/DD"
      date = gets.chomp
    puts "What is your preferred location?"
      bike_repair_shop_id = gets.chomp
    puts "Your appointment is on: #{date}."
    repair_cost = rand(100)
    puts "Your total cost is going to be $ #{repair_cost}."

    Appointment.create({date: date, repair_cost: repair_cost, bike_repair_shop_id: bike_repair_shop_id, cyclist_id: cyclist.id})
    main_menu
  end

  # READ - show appointment(s)
  def show_appointments
    system 'clear'
    cyclist.show_all_appointments
    sleep 5
    main_menu
  end

  # UPDATE - change appointment
  def change_appointment
    system 'clear'
    puts "Which appointment would you like to update?"
    show_appointments
    puts "Select an appointment id."
    appt_id = gets.chomp
    puts "What is your new preferred date? MM/DD"
    new_date = gets.chomp
    cyclist_change = @@user.appointments.find(appt_id)
    cyclist_change.update(date: new_date)
    main_menu
  end

  # DELETE - cancel appointment
  def cancel_appointment
    system 'clear'
    puts "Which appointment would you like to delete?"
    show_appointments
    puts "Select an appointment id."
    appt_id = gets.chomp
    cyclist_destroy = @@user.appointments.find(appt_id)
    cyclist_destroy.destroy
    main_menu
  end

  # Reach story: reserve bike by brand based on user input. Ask the user what brand they are looking for and provide them with 5 options. Return the location of the shop selling that particular bike brand.

  def reserve_bike
    # user inputs bike brand and we save it to a variable
    # we didn't give the user direct access to the inventory bc they don't have access to it...but they do have access to the repair shop...
    system 'clear'
    puts "Choose a brand:"
    puts "Schwinn"
    puts "Terry"
    puts "Peugeot"
    puts "Cannondale"
    puts "Bianchi"
    brand_input = gets.chomp
    # access the bike repair shop class
    array_inventory_instances = BikeRepairShop.all.bike_inventories.find_by(brand: brand_input)
    #array_inventory_instances.map |inventory_instance|
    #end
  end
end