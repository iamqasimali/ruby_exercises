# Method name: to_roman
# Inputs:      A number
# Returns:     A String representing the number in roman numerals
# Prints:      Nothing

# to_roman takes a number as input and returns that number using Roman numerals
# See http://en.wikipedia.org/wiki/Roman_numerals

# It can be tricky to handle the cases where "IV" means 4.  As a first pass,
# don't hesitate to implement a simpler version where 4 is denoted by "IIII".
#
# Remember: the priority is FEEDBACK, even if your implementation can't handle
# every single case.

  VALUES = [
  ["M", 1000],
  ["D", 500],
  ["C", 100],
  ["L", 50],
  ["XL",40],
  ["X", 10],
  ["IX",9],
  ["V", 5],
  ["IV",4],
  ["I", 1],
]

def to_roman(n)
  roman = ""

  VALUES.each do |pair|
    letter = pair[0]
    value = pair[1]
    roman += letter*(n / value)
    n = n % value
  end
  return roman
end

if __FILE__ == $PROGRAM_NAME
  p to_roman(9999)
  # What are some test cases?
end
