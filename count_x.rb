def count_by(num, x)

  # Create a new array to store our result in
  new_array = Array.new(0)

  # Iterate through as many times as x, set block param to count
  # Multipy our number times our current iteration plus 1
  x.times do |count|
    new_array << num * (count + 1)
  end

  # Return array
  new_array
end



p count_by(1,10)
p count_by(2,5)
