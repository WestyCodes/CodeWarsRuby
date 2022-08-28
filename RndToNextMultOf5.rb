=begin
Given an integer as input, can you round it to the next (meaning, "greater than or equal") multiple of 5?

Examples:

input:    output:
0    ->   0
2    ->   5
3    ->   5
12   ->   15
21   ->   25
30   ->   30
-2   ->   0
-5   ->   -5
etc.
=end

def round_to_next_5(n)
  multiple = n % 5
  if multiple == 0
    return n
  else 
    return (n-multiple) + 5
  end
end
