#play with arrays

prices = [3.99, 25.00, 8.99, 10.98]

def total(prices)
  amount = 0
  prices.each { |price| amount += price }
  amount
end
puts format("Your Total: %.2f", total(prices))

def refund(prices)
  amount = 0
  prices.each { |price| amount -= price }
  amount
end
puts format("Your Refund: %.2f", refund(prices))

def discount(prices)
  prices.each do |price|
    amount_off = price / 3.0
    puts format("Your discount: %.2f", amount_off)
  end
end
discount(prices)
