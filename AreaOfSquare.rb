=begin

Complete the function that calculates the area of the red square, when the length of the circular arc A is given as the input. Return the result rounded to two decimals.

(graph showing a red square, with an arc going from top right corner to bottom left corner)

Note: use the π value provided in your language (Math::PI, M_PI, math.pi, etc)

=end

#My solution

def square_area(arc)
  pi = Math::PI
  r = (180 * arc)/(90 * pi)
  area = r*r
  result = area.round(2)
  return result
end

#best practise

def square_area(arc)
  ((2 * arc / Math::PI) ** 2).round(2)
end
