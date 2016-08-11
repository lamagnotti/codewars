require 'pry'

def common_ground(string_1, string_2)
  common = (string_1.split & string_1.split).join(' ')
  #binding.pry
  common.empty? ? 'death' : common
end

p common_ground("aa bb cc", "bb cc bb aa") # => 'bb cc aa'
p common_ground("eat chicken", "eat chicken and rice") # => 'eat chicken'
