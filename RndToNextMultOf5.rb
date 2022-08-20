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
  mult = n % 5
  if mult == 0
    return n
  else 
    return (n-mult) + 5
  end
end
