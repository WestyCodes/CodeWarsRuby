=begin
Convert number to reversed array of digits
Given a random non-negative number, you have to return the digits of this number within an array in reverse order.

Example(Input => Output):
35231 => [1,3,2,5,3]
0 => [0]
=end

#My Solution
def digitize(n)
  n.to_s.split(//).reverse.map { |z| z.to_i}
end

#Best Practise
def digitize(n)
  n.to_s.chars.reverse.map(&:to_i)
end
