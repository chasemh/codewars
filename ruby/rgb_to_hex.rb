# RGB To Hex Conversion
#
# Author: Chase Hennion <chase_hennion@outlook.com>

# Problem Statement
#
# The rgb() method is incomplete. Complete the method so that passing in RGB decimal values will result in a hexadecimal representation being returned. The valid decimal values for RGB are 0 - 255. Any (r,g,b) argument values that fall out of that range should be rounded to the closest valid value.
#
# The following are examples of expected output values:
#
# rgb(255, 255, 255) # returns FFFFFF
# rgb(255, 255, 300) # returns FFFFFF
# rgb(0,0,0) # returns 000000
# rgb(148, 0, 211) # returns 9400D3

def rgb(r, g, b)
  # Convert the r g b integers to hex
  # The final hex string should have the following format:
  # Digits 1 and 2 = r hex value
  # Digits 3 and 4 = g hex value
  # Digits 5 and 6 = b hex value

  # First need to validate the r g b values
  r = roundRGBValue( r )
  g = roundRGBValue( g )
  b = roundRGBValue( b )

  # Build the Hex String
  return "#{ toHex( r ) }#{ toHex( g ) }#{ toHex( b ) }"

end

def roundRGBValue( val )
  if val < 0
    return 0
  elsif val > 255
    return 255
  end

  return val
end

def toHex( decimalVal )
  # Hex is base 16
  # Each hex value needs to have two digits to form the proper hex string
  # So if the hex value consists of one digit, we need to pad the string
  # with a leading 0
  return decimalVal.to_s(16).rjust(2, '0').upcase
end
