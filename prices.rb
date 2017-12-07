def total(prices)
  amount = 0
  prices.each { |price| amount += price }
  return amount
end

def refund(prices)
  amount = 0
  prices.each {|price| amount -= price }
  return amount
end

def discount(prices)
  prices.each do |price|
    amount_off = price / 3.0
    puts format("Your discount: %.2f", amount_off)
  end
end

prices = [1.00, 2.00, 3.00]

# Testing total method.
puts total(prices)

# Testing refund method.
puts refund(prices)

# Testing discount method.
puts discount(prices)
