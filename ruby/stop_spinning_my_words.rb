# Stop gninnipS My sdroW! Solution
#
# Author: Chase Hennion <chase_hennion@outlook.com>

# Problem Statement
#
# Write a function that takes in a string of one or more words, and returns the same string, but with all five or more letter words reversed (Just like the name of this Kata). Strings passed in will consist of only letters and spaces. Spaces will be included only when more than one word is present.
#
#
# Examples:
#
# spinWords( "Hey fellow warriors" ) => returns "Hey wollef sroirraw"
# spinWords( "This is a test") => returns "This is a test"
# spinWords( "This is another test" )=> returns "This is rehtona test"

def spinWords( string )
  #Split words in the string into an array
  words = string.split(' ')
  for word in words
    if word.length >= 5
      # Invert the word
      word.reverse!
    end
  end
  return words.join( ' ' )
end

# Alternate solution with less reliance on Ruby Array methods
# More portable to other langauges this way
def spinWordsAlt( string )
    #Split words in the string into an array
    words = string.split(' ')
    for i in ( 0...words.length() ) do
      if words[i].length() >= 5
        words[i] = reverse( words[i] )
      end
    end
    return words.join(' ')
end

def reverse( string )
    chars = string.chars()
    leftIndex = 0
    rightIndex = chars.length() - 1
    while leftIndex < rightIndex
        # Move through the string
        # Swap the value at left index and value at right index
        # Increment left index, decrement right index
        leftValue = chars[ leftIndex ]
        chars[ leftIndex ] = chars[ rightIndex ]
        chars[ rightIndex ] = leftValue
        leftIndex += 1
        rightIndex -= 1
    end
    return chars.join('')
end
