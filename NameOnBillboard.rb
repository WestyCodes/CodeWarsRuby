=begin
You can print your name on a billboard ad. Find out how much it will cost you. Each character has a default price of £30, 
but that can be different if you are given 2 parameters instead of 1.

You can not use multiplier "*" operator.

If your name would be Jeong-Ho Aristotelis, ad would cost £600. 20 leters * 30 = 600 (Space counts as a character).
=end

#My solution
def billboard(name, price = 30)
  result = 0
  name.chars.each { result = result + price }
  return result
end

#Best practise
def billboard(name, price = 30)
  sum = 0
  name.length.times{sum+=price}
  sum
end
