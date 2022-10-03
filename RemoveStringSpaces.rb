=begin
Simple, remove the spaces from the string, then return the resultant string.
=end

#My Solution
def no_space(x)
  x.gsub(" ", "")
end

#Best practise
def no_space(x)
  x.delete(' ')
end
