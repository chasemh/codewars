# Checking Groups Solution
#
# Author: Chase Hennion <chase_hennion@outlook.com>


# Problem Statement
#
# In English and programming, groups can be made using symbols such as "()" and "{}" that change meaning. However, these groups must be closed in the correct order to maintain correct syntax.
#
# Your job in this kata will be to make a program that checks a string for correct grouping. For instance, the following groups are done correctly:
#
# ({})
# [[]()]
# [{()}]
# The next are done incorrectly
#
# {(})
# ([]
# [])
# A correct string cannot close groups in the wrong order, open a group but fail to close it, or close a group before it is opened.
#
# Your function will take an input string that may contain any of the symbols "()" "{}" or "[]" to create groups.
#
# It should return True if the string is empty or otherwise grouped correctly, or False if it is grouped incorrectly.

def group_check(s)
  if s.length == 0
    return true
  elsif s.length % 2 != 0
    # The group cannot be valid if there is not an even number of characters
    return false
  end

  openingBrackets = [ '(', '{', '[' ]

  bracketMatches = {
    '(' => ')',
    '{' => '}',
    '[' => ']'
  }

  # A valid bracket group requires that the last encountered opening bracket must
  # pair with the first encountered closing bracket.
  # Stacks offer last in first out access so it makes sense to use one here.
  bracketStack = Array.new()
  for bracket in s.chars() do
    if openingBrackets.include?( bracket )
      # Found an opening bracket. Save it for later.
      bracketStack.push( bracket )
    else
      # Encountered a closing bracket.
      # Grab the last opening bracket and see if it pairs with the latest bracket.
      lastOpeningBracket = bracketStack.pop()
      if bracket != bracketMatches[ lastOpeningBracket ]
        # The last opening bracket doesn't pair with the encountered closing bracket.
        # This indicates an invalid group.
        return false
      end
    end
  end

  return true

end
