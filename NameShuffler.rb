=begin
Write a function that returns a string in which firstname is swapped with last name.

Example(Input --> Output)

"john McClane" --> "McClane john"
=end

#My Solution & also best practise.
def name_shuffler(str)
  str.split.reverse.join(" ")
end

