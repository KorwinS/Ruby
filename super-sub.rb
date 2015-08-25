#Super and sub classes

class Vehicle
  attr_accessor :odometer
  attr_accessor :gas_used

  def accelerate
    puts "Floor it!"
  end

  def sound_horn
    puts "BEEP BEEP Motherfuckers!"
  end

  def steer
    puts "Turn fron 2 wheels."
  end

  def mileage
    return @odometer / @gas_used
  end

end

class Car < Vehicle
end

class Truck < Vehicle
end

class Motorcycle < Vehicle
end

f_150 = Truck.new
f_150.accelerate
f_150.sound_horn

mustang = Car.new
mustang.steer
mustang.odometer = 1400
mustang.gas_used = 40
puts "This car gets #{mustang.mileage} mpg!"
