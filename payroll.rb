class Employee

  attr_reader :name

#set the name
  def name=(name)
    if name == ""
      raise "Name cannot be blank!"
    end
    @name = name
  end

  def print_name
    puts "Name: #{@name}"
  end

  def initialize(name = "Anon")
    self.name = name
  end

end

class SalariedEmployee < Employee
  attr_reader :salary

  #set the salary
  def salary=(salary)
    if salary < 0
      raise "A salary of #{salary} isn't valid!"
    end
    @salary = salary
  end

  #init the class
  def initialize(name = "Anon", salary = 0.0)
    super(name)
    self.salary = salary
  end

  #print the pay stub
  def print_pay_stub
    print_name
    pay_for_period = (@salary / 365.0) * 14
    formatted_pay = format("%.2f", pay_for_period)
    puts "Pay for this period: $#{formatted_pay}"
  end

end

class HourlyEmployee < Employee

  #Factory Methods for positions. update as needed
  def self.security_guard(name)
    HourlyEmployee.new(name, 19.25, 30)
  end
  def self.cashier(name)
    HourlyEmployee.new(name, 12.75, 25)
  end
  def self.janitor(name)
    HourlyEmployee.new(name, 10.50, 20)
  end

  attr_reader :hourly_wage, :hours_per_week

  #wage calc
  def hourly_wage=(hourly_wage)
    if hourly_wage < 0
      raise "A wage of #{hourly_wage} is invalid!"
    end
    @hourly_wage = hourly_wage
  end

  def hours_per_week=(hours_per_week)
    if hours_per_week < 0
      raise "#{hours_per_week} is invalid!"
    end
    @hours_per_week = hours_per_week
  end

  #init the class
  def initialize(name = "Anon", hourly_wage = 0.0, hours_per_week = 0.0)
    super(name)
    self.hourly_wage = hourly_wage
    self.hours_per_week = hours_per_week
  end

  #print the pay stub
  def print_pay_stub
    print_name
    pay_for_period = @hourly_wage * @hours_per_week * 2
    formatted_pay = format("%.2f", pay_for_period)
    puts "Pay for this period: $#{formatted_pay}"
  end

end

# YOU ARE NOW ENTERING THE TEST ZONE
# Comment or uncomment as needed for code testing

blake = SalariedEmployee.new
blake.name = "Blake Black"
blake.salary = 140000
blake.print_pay_stub

carl = HourlyEmployee.security_guard("Carl Cooper")
carl.print_pay_stub

dobby = HourlyEmployee.cashier("Dobby Elf")
dobby.print_pay_stub

moose = HourlyEmployee.janitor("Moose Trucks")
moose.print_pay_stub

billy = SalariedEmployee.new
#billy.name = "Blake Black"
#billy.salary = 140000
billy.print_pay_stub

chris = HourlyEmployee.new
#chris.name = "Carl Cooper"
#chris.hourly_wage = 17
#chris.hours_per_week = 38.5
chris.print_pay_stub
