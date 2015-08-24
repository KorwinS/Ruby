class Dog
  attr_accessor :name, :age

  def name=(value)
    if value == ""
      raise "Name can't be blank!"
    end
    @name = value
  end

  def age=(value)
    if value < 0
      raise "An age of #{value} isn't valid!"
    end
    @age = value
  end

  def move(destination)
    puts "#{@name} runs to the #{destination}."
  end

  def talk
    puts "#{@name} says Bark!"
  end

  def report_age
    puts "#{@name} is #{@age} years old."
  end

  def good_dog(value)
    if value == "yes"
      puts "#{@name} is a good dog!"
    else
      puts "#{@name} is a bad dog."
  end

end

dog = Dog.new
print "What is the dog's name? "
dog.name = gets.chomp
print "How old is this dog? "
dog.age = gets.to_i
dog.report_age
dog.talk
print "Tell the dog where to go! Where should the dog run? "
dog.move(gets.chomp)
print "Is #{dog.name} a good dog? "
dog.good_dog(gets.chomp)
