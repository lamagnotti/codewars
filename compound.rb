def compound_array(a, b)
  if a.length >= b.length
    array_new = a.zip(b)
  else
    array_new = b.zip(a).map(&:reverse)
  end
  array_new.flatten.compact
end

p compound_array([11, 12], [21, 22, 23, 24]) # => [(11, 21, 12, 22, 23, 24])
