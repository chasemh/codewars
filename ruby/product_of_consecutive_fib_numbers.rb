# Product of Consecutive Fib Numbers Solution
#
# Author: Chase Hennion <chase_hennion@outlook.com>

# Problem Statement
#
# The Fibonacci numbers are the numbers in the following integer sequence (Fn):
#
# 0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144, 233, ...
# such as
#
# F(n) = F(n-1) + F(n-2) with F(0) = 0 and F(1) = 1.
# Given a number, say prod (for product), we search two Fibonacci numbers F(n) and F(n+1) verifying
#
# F(n) * F(n+1) = prod.
# Your function productFib takes an integer (prod) and returns an array:
#
# [F(n), F(n+1), true] or {F(n), F(n+1), 1} or (F(n), F(n+1), True)
# depending on the language if F(n) * F(n+1) = prod.
#
# If you don't find two consecutive F(m) verifying F(m) * F(m+1) = prod you will return
#
# [F(m), F(m+1), false] or {F(n), F(n+1), 0} or (F(n), F(n+1), False)
# F(m) being the smallest one such as F(m) * F(m+1) > prod.
#
# Examples
#
# productFib(714) # should return [21, 34, true],
#                 # since F(8) = 21, F(9) = 34 and 714 = 21 * 34
#
# productFib(800) # should return [34, 55, false],
#                 # since F(8) = 21, F(9) = 34, F(10) = 55 and 21 * 34 < 800 < 34 * 55
# Note: Not useful here but we can tell how to choose the number n up to which to go: we can use the "golden ratio" phi which is (1 + sqrt(5))/2 knowing that F(n) is asymptotic to: phi^n / sqrt(5). That gives a possible upper bound to n.
#
# References
#
# http://en.wikipedia.org/wiki/Fibonacci_number
#
# http://oeis.org/A000045

# Tests
# Test.assert_equals(productFib(4895), [55, 89, true])
# Test.assert_equals(productFib(5895), [89, 144, false])

# Fibonachi numbers: Each number is the sum of the previous two numbers
# Always starts with 0,1

def productFib(prod)

    # Find two consecutive fibonacci numbers whose product equals prod
    # Want to return an array consisting of the three elements
    # The first two elements are the consecutive fibonnaci numbers
    # whose product equals prod or whose product is the closest value above prod
    # The third element is true if the product of the first two elements equals prod
    # and false otherwise.

    result = Array.new( 3 )
    fibs = Array.new()

    # Seed the first two fibonnaci numbers
    fibs.push( 0 )
    fibs.push( 1 )

    # Set the Fibnoacci array index
    i = 2
    while fibs[ i - 1] * fibs[ i - 2 ] < prod
        # Find the next fibonaci number
        fibs.push( fibs[ i - 1 ] + fibs[ i - 2] )
        i += 1
    end

    result[ 0 ] = fibs[ i - 2 ]
    result[ 1 ] = fibs[ i - 1 ]
    if fibs[ i - 1] * fibs[ i - 2 ] == prod
        result[ 2 ] = true
    else
        result[ 2 ] = false
    end

    return result

end
