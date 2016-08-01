# Return an array containing the numbers from 1 to N, where N is the parametered value.
# If the value is a multiple of 3: use the value 'Fizz' instead
# If the value is a multiple of 5: use the value 'Buzz' instead
# If the value is a multiple of 3 & 5: use the value 'FizzBuzz' instead

def fizzbuzz(n)
  # Creata a new array to store our values in
  array = []

  # Iterate through our numbers from 1 upto our argument
  # As we iterate, if our number is divisible by both 3 and 5 we'll add FizzBuzz
  # to our new array, etc.
  (1..n).each do |el|
    if el % 3 == 0 && el % 5 == 0
      array << "FizzBuzz"
    elsif el % 3 == 0
      array << "Fizz"
    elsif el % 5 == 0
      array << "Buzz"
    else
      array << el
    end
  end

  # Return array with replaced values
  array
end

p fizzbuzz(30)
