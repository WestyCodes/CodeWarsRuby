=begin
In DNA strings, symbols "A" and "T" are complements of each other, as "C" and "G". Your function receives one side of the DNA; 
you need to return the other complementary side. DNA strand is never empty or there is no DNA at all.

Example: (input --> output)

"ATTGC" --> "TAACG"
"GTAT" --> "CATA"
=end

def DNA_strand(dna)
  result = ""
  myString = dna
  myArray = myString.chars
  myArray.each do |x|
    if x == "A"
      result << "T"
    elsif x == "T"
      result << "A"
    elsif x == "G"
      result << "C"
    elsif x == "C"
      result << "G"
    else
    end
  end
  
  return result    
 end
