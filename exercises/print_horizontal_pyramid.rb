# Method name: print_horizontal_pyramid
# Input: a number n
# Returns: Nothing
# Prints: a pyramid consisting of "*" characters that is "n" characters tall
#         at its tallest
#
# For example, print_horizontal_pyramid(4) should print
#
#    *
#   ***
#  *****
# *******
require_relative "./print_triangle"
def space(count)
  (1..count).each do |i|
    print " "
  end       # This prints a single "*"
end

def print_horizontal_pyramid(height)
  count=1
  spacecount=height-1
  (1..height).each do
    space(spacecount)
    print_line(count)
    count+=2
    spacecount-=1
  end
end

if __FILE__ == $PROGRAM_NAME
  print_horizontal_pyramid(10)
  print "\n\n\n"
  print_horizontal_pyramid(3)
end
