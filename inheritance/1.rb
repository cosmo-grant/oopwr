class Vehicle
  attr_accessor :color
  attr_reader :year

  @@num_vehicles = 0

  def self.gas_mileage(gallons, miles)
    puts "#{miles.to_f / gallons} mpg"
  end

  def self.num_vehicles
    puts "number of vehicles created is #{@@num_vehicles}"
  end

  def initialize(year, color, model)
    @year = year
    @color = color
    @model = model
    @speed = 0
    @@num_vehicles += 1
  end

  def speed_up
    @speed += 1
  end

  def brake
    @speed -= 1
  end

  def shut_off
    @speed = 0
  end

  def spray_paint(new_color)
    self.color = new_color
  end

  def display_age
    puts "The vehicle is #{age} years old."
  end
  
  :private

  def age
    Time.now.year - @year
  end
end

module Towable
  def can_tow?(num_pounds)
    num_pounds < 1000
  end
end

class MyCar < Vehicle
  NUM_WHEELS = 4

  def to_s
    "My car is a #{color} #{year} #{@model}, traveling at #{@speed} mph."
  end
end

class MyTruck < Vehicle
  include Towable
  NUM_WHEELS = 8

  def to_s
    "My truck is a #{color} #{year} #{@model}, traveling at #{@speed} mph."
  end
end

c = MyCar.new(1991, 'red', 'Accent')
puts c
c.speed_up
puts c
c.brake
puts c
c.spray_paint('grey')
puts c
MyCar.gas_mileage(10, 20)
puts c
c.display_age
Vehicle.num_vehicles
t = MyTruck.new(2016, 'white', 'Monster')
puts t
t.speed_up
puts t
t.spray_paint('silver')
puts t
puts t.can_tow?(3000)
Vehicle.num_vehicles
t.display_age



p Vehicle.ancestors
p MyCar.ancestors
p MyTruck.ancestors
