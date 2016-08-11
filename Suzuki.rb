require 'pry'

def lineup_students(students)
  # Init new array
  new_array = []

  # Split students to turn it into an array
  # Then call #sort and iterate over each name, and appending
  # the length of the name and the name to our new_array
  students.split(' ').sort.each do |name|
    new_array << [name.length, name]
  end

  # Iterate through our array containing the length of the name
  # and the name, we call #sort to display our name size from
  # smallest to largest. We can then call #reverse next to swtich our
  # results from largest name sizes to smallest.

  # Then iterate through our array, and return each element. Then store
  # those results in, result.
  result = new_array.sort.reverse.map do |el|

  # If you print el[0], you'll see that we can see each number
  # in order from greatest to smallest. If we print el[1], we will be printing
  # the name of each student in order from greatest to smallest, which is
  # exactly what we want!
    el[0]
  end
  result
end

s1 = 'Tadashi Takahiro Takao Takashi Takayuki Takehiko Takeo Takeshi Takeshi'
lst1 = ['Takehiko','Takayuki','Takahiro','Takeshi','Takeshi','Takashi','Tadashi','Takeo','Takao']
p lineup_students(s1)# == (lst1)
