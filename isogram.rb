def is_isogram(string)

  # We'll downcase our string first, then split our string into characters
  # and call #uniq on it to see if there are any duplicate chracters. We'll set
  # the result of the left side of the assignment equal to our string, downcased,
  # and split into chracters. If each side equals eachother, return true, otherwise
  # return false
  string.downcase.chars.uniq == string.downcase.chars
end

p is_isogram("Dermatoglyphics") # => true
p is_isogram("isogram") # => true
p is_isogram("moose") # => false
