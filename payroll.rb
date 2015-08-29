class Employee

  attr_reader :name, :salary

  def name=(name)
    if name == ""
      raise "Name cannot be blank!"
    end
    @name = name
  end

  def salary=(salary)
    if salary < 0
      raise "A salary of #{salary} isn't valid!"
    end
    @salary = salary
  end

  def print_pay_stub
    puts "Name: #{@name}"
    pay_for_period = (@salary / 365) * 14
    puts "Pay for this period: #{pay_for_period}"
  end

end
