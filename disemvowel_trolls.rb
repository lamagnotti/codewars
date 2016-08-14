# Approach

# Create a new string and assign to it the #split method to break up
# our given string into characters. Next, we'll iterate through our string
# and delete the vowels, then call #join and return our new string.

def disemvowel(str)
  new_string = str.split('')
  new_string.map { |vowel| vowel.delete('AEIOUaeiou')}.join('')
end

p disemvowel("This website is for losers LOL!") # => "Ths wbst s fr lsrs LL!"
