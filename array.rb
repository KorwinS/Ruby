#play with arrays

price = [3.99, 25.00, 8.99, 10.98]

def total(price)
  amount = 0
  index = 0
  while index < price.length
    amount += price[index]
    index += 1
  end
  amount
end
puts format("%.2f", total(price))

def refund(price)
  amount = 0
  index = 0
  while index < price.length
    amount -= price[index]
    index += 1
  end
  amount
end
puts format("%.2f", refund(price))

def discount(price)
  index = 0
  while index < price.length
    amount_off = price[index] / 3.0
    puts format("Your discount: %.2f", amount_off)
    index += 1
  end
end
discount(price)

def method_name(&my_block)
  puts "We're in the method, about to invoke the block"
  my_block.call
  puts "We're back in the method"
end

method_name do
  puts "BLOCK BLOCK BLOCK BLOCK"
end
