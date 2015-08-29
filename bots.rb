class Robot
  attr_accessor :name

  def activate
    puts "#{@name} is powering up"
  end

  def move(destination)
    puts "#{@name} walks to #{destination}"
  end

end

class TankBot < Robot

  attr_accessor :weapon

  def attack
    puts "#{@name} fires #{weapon}"
  end

  def move(destination)
    puts "#{@name} rolls to #{destination}"
  end

end

class SolarBot < Robot

  def activate
    puts "#{@name} deploys solar panel"
    super
  end
  
end
