=begin
It's pretty straightforward. Your goal is to create a function that removes the first and last characters of a string. 
You're given one parameter, the original string. You don't have to worry with strings with less than two characters.
=end

#My Solution
def remove_char(s)
  arr = s.split("")
  arr.pop
  arr.delete_at(0)
  result = arr.join("")
  return result
end

#Best Practise
def remove_char(s)
  s[1...-1]
end
