=begin
Your team is writing a fancy new text editor and you've been tasked with implementing the line numbering.

Write a function which takes a list of strings and returns each line prepended by the correct number.

The numbering starts at 1. The format is n: string. Notice the colon and space in between.

Examples: (Input --> Output)

[] --> []
["a", "b", "c"] --> ["1: a", "2: b", "3: c"]
=end

#my solution
def number lines
  counter = 1
  result = []
  lines.each do |x|
    str = ""
    str << counter.to_s
    str << ": "
    str << x
    result << str
    counter += 1
  end
  return result
end




#best practise
def number lines
  lines.map.with_index(1) { |l, i| "#{i}: #{l}" }
end
