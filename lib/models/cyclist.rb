class Cyclist < ActiveRecord::Base

  has_many :appointments
  has_many :bike_repair_shops, through: :appointments


  def self.login_a_cyclist
    puts "Ah, you chose login a user!"
    puts "What is your username?"
    userName = gets.chomp
    puts "What is your password?"
    pass = gets.chomp

    cyclist = Cyclist.find_by(username: userName, password: pass)

    if cyclist.nil?
        puts "Sorry, nobody with that username or password exists"
    else
        cyclist
    end
  end

  def self.register_a_cyclist
    puts "What is your name?"
    full_name = gets.chomp
    puts "What is your username?"
    userName = gets.chomp
    puts "What is your password?"
    pass = gets.chomp
    puts "What is your neighborhood?"
    neighborhood = gets.chomp

    user = Cyclist.find_by(username: userName)

    if user
        puts "Sorry, that username is already taken"
    else
        Cyclist.create(name: full_name, username: userName, password: pass, neighborhood: neighborhood)
    end
  end

  def show_all_appointments
    puts "Hi #{self.username}! These are your appointment(s):"
    self.appointments.each_with_index do |appointment, i|
        puts "#{appointment.id}) #{appointment.date} #{appointment.bike_repair_shop.shop_name}"
    end
  end
end

