def double_char(string)
  dub_word = []
  new_string = string.chars
  new_string.map do |char|
    dub_word << char * 2
  end
  dub_word.join('')
end


p double_char("Hello World") #==> "HHeelllloo  WWoorrlldd"
