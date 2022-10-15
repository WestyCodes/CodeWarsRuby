=begin
Write a program to determine if the two given numbers are coprime. A pair of numbers are coprime if their greatest shared factor is 1.

The inputs will always be two positive integers between 2 and 99.

Examples
20 and 27:

Factors of 20: 1, 2, 4, 5, 10, 20
Factors of 27: 1, 3, 9, 27
Greatest shared factor: 1
Result: 20 and 27 are coprime
12 and 39:

Factors of 12: 1, 2, 3, 4, 6, 12
Factors of 39: 1, 3, 13, 39
Greatest shared factor: 3
Result: 12 and 39 are not coprimes
=end

#My Solution
def coprime?(n, m)
  n_array = [] #-------------------------------------------- Array to put all the factors of the "n" parameter into
  m_array = [] #-------------------------------------------- Array to put all the factors of the "m" parameter into
  (1..n).each { |numN| n_array << numN if n % numN == 0 } #- I make a list of numbers of 1 to the "n" parameter. 
  # Then for each of those numbers, i divide the 'n' parameter by this new sequence. 
  # For each one which is cleanly divisible, I push that number into the N array.

  (1..m).each { |numM| m_array << numM if m % numM == 0 } # - same as above, but for the 'm' parameter and the m_array.
  
  merge = ( n_array & m_array ) #---------------------------- Merges the two arrays only keeping duplicates.
  result = merge.length #------------------------------------ Create a variable with an integer for the length of the new array
  if result == 1 #------------------------------------------- if the integer is 1, then they are coprime. if not, they arent.
    return true
  else
    return false
  end
end

#Best Practise
def coprime?(n, m)
  n.gcd(m) == 1
end
