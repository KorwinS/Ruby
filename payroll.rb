class Employee

  attr_reader :name, :salary

#set the name
  def name=(name)
    if name == ""
      raise "Name cannot be blank!"
    end
    @name = name
  end

#set the salary
  def salary=(salary)
    if salary < 0
      raise "A salary of #{salary} isn't valid!"
    end
    @salary = salary
  end

#init the class
  def initialize(name = "Anon", salary = 0.0)
    @name = name
    @salary = salary

  end

#print the pay stub
  def print_pay_stub
    puts "Name: #{@name}"
    pay_for_period = (@salary / 365.0) * 14
    formatted_pay = format("%.2f", pay_for_period)
    puts "Pay for this period: $#{formatted_pay}"
  end

end

#TEST ZONE
blake = Employee.new
blake.name = "Blake Black"
blake.salary = 140000
blake.print_pay_stub

carl = Employee.new
carl.name = "Carl Cooper"
carl.salary = 40000
carl.print_pay_stub
