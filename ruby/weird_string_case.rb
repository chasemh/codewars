# WeIrD StRiNg CaSe Solution
#
# Author: Chase Hennion <chase_hennion@outlook.com>

# Problem Statement
#
# Write a function toWeirdCase (weirdcase in Ruby) that accepts a string, and returns the same string with all even indexed characters in each word upper cased, and all odd indexed characters in each word lower cased. The indexing just explained is zero based, so the zero-ith index is even, therefore that character should be upper cased.
#
# The passed in string will only consist of alphabetical characters and spaces(' '). Spaces will only be present if there are multiple words. Words will be separated by a single space(' ').
#
# Examples:
#
# weirdcase( "String" )#=> returns "StRiNg"
# weirdcase( "Weird string case" );#=> returns "WeIrD StRiNg CaSe"

def weirdcase( string )
  weirdWords = Array.new()
  for word in string.split(' ')
    chars = word.chars()
    for i in (0...chars.length()) do
      if i % 2 == 0
        # Set to uppercase
        chars[i].upcase!
      else
        # Set to lowercase
        chars[i].downcase!
      end
    end
    # Word made weird
    weirdWords.push( chars.join('') )
  end
  # Join all weird words into a single string
  return weirdWords.join( ' ' )
end
