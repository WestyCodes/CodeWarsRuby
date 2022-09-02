=begin
Given a non-empty array of integers, return the result of multiplying the values together in order. Example:

[1, 2, 3, 4] => 1 * 2 * 3 * 4 = 24
=end

#my solution
def grow(x) 
  formula = 1
  x.each do |x|
    formula = formula * x
  end
  return formula
end


#best practise
def grow(x) 
  x.reduce(:*)
end
