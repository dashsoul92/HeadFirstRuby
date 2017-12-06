def total(prices)
  amount = 0
  index = 0

  while index < prices.length
    amount += prices[index]
    index += 1
  end

  return amount
end

def refund(prices)
  amount = 0
  index = 0

  while index < prices.length
    amount -= prices[index]
    index += 1
  end

  return amount
end

def show_discounts(prices)
  index = 0

  while index < prices.length
    # Finding the discounted price.
    amount_off = prices[index] / 3.0
    puts format("Your discount: %0.2f", amount_off)
    index += 1
  end
end

prices = [3.99, 25.00, 8.99]

# Testing total method.
puts format("%0.2f", total(prices))

# Testing refund method.
puts format("%0.2f", refund(prices))

# Testing discount method.
show_discounts(prices)
