=begin
Codewars kata: Alphabetically Ordered. Kyu 7.
Description:
Your task is very simple. Just write a function takes an input string of lowercase letters and returns true/false depending on whether the string is in alphabetical order or not.
Examples (input -> output)
"kata" -> false ('a' comes after 'k')
"ant" -> true (all characters are in alphabetical order)
=end


def alphabetic(s)
    s.chars.sort.join == s
end

=begin
No IF statement was needed, due to the implicit return of True/False from the statement within the function.
=end