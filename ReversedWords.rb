=begin
Complete the solution so that it reverses all of the words within the string passed in.

Example(Input --> Output):

"The greatest victory is that which requires no battle" --> "battle no requires which that is victory greatest The"
=end

#my solution (and also best practise!)

def solution(sentence)
  sentence.split.reverse.join(" ")
end
