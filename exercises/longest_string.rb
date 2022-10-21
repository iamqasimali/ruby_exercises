# Method name: longest_string(list)
# Inputs:      a list of strings
# Returns:     the longest string in the list
# Prints:      Nothing
#
# For example, longest_string(["a", "zzzz", "c"]) should return "zzzz" since
# the other strings are 1 character long and "zzzz" is 4 characters long.
#
# To get the length of a string in the variable str, call str.length
# For example,
#   str = "zzzz"
#   str.length == 4
def longest_string(list)
  # This is your job. :)
  longest_string_sofar=list.first
  list.each do |item|
    if item.length>longest_string_sofar.length
      longest_string_sofar=item
    end
  end
  array=Array.new
  #array.push(longest_string_sofar)
  list.each do |item|
    if item.length==longest_string_sofar.length
      array.push(item)
    end
  end
  return array
end


if __FILE__ == $PROGRAM_NAME
  # I'd advise putting some sanity checks here.
  p longest_string(["abc","Ameer","Hamzaa"])
  p longest_string(["Netsol","Arbisoft","Tech_Creatix"])
  p longest_string(["Shahzad","Aslam","Shahbaz"])
  p longest_string(["Ameer"])
  # How else will you be sure your code does what you think it does?
end
