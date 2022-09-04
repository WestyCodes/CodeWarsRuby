=begin
Task
Given an array of numbers and an index, return either the index of the smallest number that is larger than the element at the given index, or -1 if there is no such index ( or, where applicable, Nothing or a similarly empty value ).

Notes
Multiple correct answers may be possible. In this case, return any one of them.
The given index will be inside the given array.
The given array will, therefore, never be empty.

Example
least_larger( [4, 1, 3, 5, 6], 0 )  =  3
least_larger( [4, 1, 3, 5, 6], 4 )  = -1
=end


#my solution

def least_larger(a, i) 
  larger_than_me = a[i]
  bigNums = []
  smolNums = []
  result = 0
  a.map { |x| x > larger_than_me ? bigNums << x : smolNums << x }
    
  if bigNums.length == 0
    return -1
  else
    bigNums.sort!
    x = bigNums[0]
    result = a.index(x)
  end
end

#best practise
def least_larger(a, i)
   a.index(a.select{|e|e>a[i]}.min) || -1
end
