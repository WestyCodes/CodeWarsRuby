=begin
Remember the spongebob meme that is meant to make fun of people by repeating what they say in a mocking way?

"Dont use that weird spongebob mocking meme" Me: DonT uSe thAt WeIrd SpoNgEboB MoCkinG MEme

You need to create a function that converts the input into this format, with the output being the same string expect there is a pattern of uppercase and lowercase letters.

Example:

input:  "stop Making spongebob Memes!"
output: "StOp mAkInG SpOnGeBoB MeMeS!"
=end

#My Solution

def sponge_meme(sentence)
  counter = 0
  array = sentence.chars
  arr = []
  array.map do |something|
    if counter % 2 == 0
      arr << something.upcase
    else
      arr <<something.downcase
    end
    counter += 1
  end
  arr2 = arr.join
  return arr2
end

#Best Practise

def sponge_meme s
  s.split('').map.with_index {|c, i| i % 2 == 0 ? c.upcase : c.downcase}.join ''
end
