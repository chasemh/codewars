# Disemvowel Trolls Solution
#
# Author: Chase Hennion <chase_hennion@outlook.com>

# Problem Statement
#
# Take 2 strings s1 and s2 including only letters from ato z. Return a new sorted string, the longest possible, containing distinct letters, - each taken only once - coming from s1 or s2.
#
# Examples:
#
# a = "xyaabbbccccdefww"
# b = "xxxxyyyyabklmopq"
# longest(a, b) -> "abcdefklmopqwxy"
#
# a = "abcdefghijklmnopqrstuvwxyz"
# longest(a, a) -> "abcdefghijklmnopqrstuvwxyz"

def disemvowel(str)
  # Use a regex to replace all occurences of vowels (a, e, i, o, u) with an empty string.
  # Remember upper and lower case
  return return str.gsub( /[aeiou]/i, '' )
end
