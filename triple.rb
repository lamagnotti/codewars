def triple_trouble(one, two, three)

  # Let's create a new string called result to store our final
  # joined string together
  result = ''
  i = 0

  # We can use a while loop to run only as long as the length of
  # our first string. We use the length because it's given that
  # each of the strings are the same length
  while i < one.length

  # Append the index from our first string, one, to our new string, result
  # Repeat and increment our index until the loop is complete
    result << one[i]
    result << two[i]
    result << three[1]
    i += 1
  end

  # Return result of our loop
  result
end

p triple_trouble("aaa","bbb","ccc") # => ("abcabcabc")
