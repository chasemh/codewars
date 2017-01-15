# Persistent Bugger Solution
#
# Author: Chase Hennion <chase_hennion@outlook.com>

# Problem Statement
#
# Write a function, persistence, that takes in a positive parameter num and returns its multiplicative persistence, which is the number of times you must multiply the digits in num until you reach a single digit.
#
# For example:
#
#  persistence(39) # returns 3, because 3*9=27, 2*7=14, 1*4=4
#                  # and 4 has only one digit
#
#  persistence(999) # returns 4, because 9*9*9=729, 7*2*9=126,
#                   # 1*2*6=12, and finally 1*2=2
#
#  persistence(4) # returns 0, because 4 is already a one-digit number

def persistence( num )
    if num.to_s().length() == 1
      # Already a single digit number
      return 0
    end
    persistanceVal = 1
    persistanceFound = false
    while !persistanceFound do
       product = 1
      for char in num.to_s().chars()
         product *= char.to_i()
      end
      if product.to_s().length() == 1
        persistanceFound = true
      else
        num = product
        persistanceVal += 1
      end
    end
    return persistanceVal
end
