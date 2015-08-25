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
    return @odmeter / @gas_used
  end
  
end
