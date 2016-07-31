# Convert number to reversed array of digits

def digitize(n)
  # Option 1

  # First, we need to convert our set of numbers into a string, so we can
  # split them up one by one, then we can reverse each character, and mutate
  # them into integers
  n.to_s.chars.reverse.map(&:to_i)

  # Option 2
  n.to_s.split('').reverse!.map(&:to_i)
end

p digitize(35231)
