# Write a method smash that takes an array of words and
# smashes them together into a sentence and returns the sentence.

def smash(words)

  # Use the #join method to bring each seperate word together into one string
  words.join(" ")
end

p smash(["I", "Love", "Rebecca"])
