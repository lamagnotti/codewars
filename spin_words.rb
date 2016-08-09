def spinWords(string)
  new_string = []
  rev_string = string.split
  rev_string.map do |word|
    if word.size >= 5
      new_string << word.reverse
    else
      new_string << word
    end
  end
  new_string.join(' ')
end

p spinWords( "Hey fellow warriors" )
