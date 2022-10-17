=being
This time no story, no theory. The examples below show you how to write function accum:

Examples:
accum("abcd") -> "A-Bb-Ccc-Dddd"
accum("RqaEzty") -> "R-Qq-Aaa-Eeee-Zzzzz-Tttttt-Yyyyyyy"
accum("cwAt") -> "C-Ww-Aaa-Tttt"
The parameter of accum is a string which includes only letters from a..z and A..Z.
=end

#My Solution
def accum(s)
  result = []
  counter = 1
  array = s.downcase.chars
  array.each do |x|
    y = x * counter
    y.capitalize!
    result << y + "-"
    counter += 1
  end
  result2 = result.join.chop
  return result2
      
end

#Best Pracitse
def accum(s)
  s.chars.each_with_index.map{ |c, i| c.upcase + c.downcase * i }.join('-')
end
