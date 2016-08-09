def stringy(size)
  new_string = []
  index = 0

  size.times do |num|
    result = index.even? ? 1 : 0
    new_string << result
    index += 1
  end
  new_string.join('')
end

p stringy(6) # => '101010'
