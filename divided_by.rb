# Write a method which takes two arguments and returns all number,
# which are divisible by given divisor.

# Version 1

def divisible_by(numbers, divisor)

  # Create new array to store our results in
  divide_array = []

  # Iterate through our set of given numbers, and determine whether each number
  # being passed in has a remainder of 0 after being divided by our given divisor
  numbers.each do |el|
    if el % divisor == 0

  # If our if statement evaluates to true, then append that number onto our new array
  # divide_array
      divide_array << el
    end
  end

  # Return array containing all elements divided evenly by our divisor
  divide_array
end


p divisible_by([1,2,3,4,5,6], 2)


# Version 2, idiomatic Ruby

def divisible_by(numbers, divisor)

  # This is a very concise approach to solving this problem. Here we're going to be selecting
  # only digits that are divisible by our divisor.
  numbers.select { |n| n % divisor == 0}
end
