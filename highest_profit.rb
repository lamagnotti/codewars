# Write a function that returns both the minimum and
# maximum number of the given list/array.

def min_max(lst)

  # Using the min/max method, we'll call that on our paramter
  # and return the result in an array
  [lst.min, lst.max]
end

p min_max([1,2,3,4,5]) # => [1,5]
