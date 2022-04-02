class MyCar
  attr_accessor :color
  attr_reader :year

  def self.gas_mileage(gallons, miles)
    puts "#{miles.to_f / gallons} mpg"
  end

  def initialize(year, color, model)
    @year = year
    @color = color
    @model = model
    @speed = 0
  end

  def to_s
    "My car is a #{color} #{year} #{@model}, traveling at #{@speed} mph"
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

  def output_info
    puts "year #{year}, color #{color}, model #{@model}, speed #{@speed}"
  end

end

c = MyCar.new(1991, 'red', 'Accent')
c.output_info
c.speed_up
c.output_info
c.brake
c.output_info
c.spray_paint('grey')
c.output_info
MyCar.gas_mileage(10, 20)
puts c
