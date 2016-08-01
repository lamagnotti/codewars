# Write a method that inserts a dash inbetween two odd numbers

def insert_dash(num)

  # Convert our set of numbers to string, then call #gsub on it
  # and then use a regex to place a dash inbetween any odd number
  num.to_s.gsub(/(?<=[13579])([13579])/, '-\1')
end

p insert_dash(454793)
