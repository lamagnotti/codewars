def billboard(name, price = 30)

  # Init sum to store the total in
  sum = 0

  # Iterate using the #times method over the length of the string
  # and then on each iteration, add the price to the sum.

  # 19 times, of adding 30 + 30 = 570
  name.length.times do
    sum += price
  end

  # Return sum
  sum
end

p billboard("Abishai Charalampos") # => 570
