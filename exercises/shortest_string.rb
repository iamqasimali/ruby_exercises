# Method name: shortest_string(list)
# Inputs:      a list of strings
# Returns:     the shortest string in the list
# Prints:      Nothing

def shortest_string(list)
  # This is your job. :)
  shortest_string_sofar=list.first
  list.each do |item|
    if item.length<shortest_string_sofar.length
      shortest_string_sofar=item
    end
  end
  array=Array.new
  #array.push(longest_string_sofar)
  list.each do |item|
    if item.length==shortest_string_sofar.length
      array.push(item)
    end
  end
  return array
end

if __FILE__ == $PROGRAM_NAME
  # I'd advise putting some sanity checks here.
  p shortest_string(["abc","Ameer","Hamzaa"])
  p shortest_string(["Netsol","Arbisoft","Tech_Creatix"])
  p shortest_string(["Shahzad","Aslam","Shahbaz"])
  p shortest_string(["Ameer","Hamza"])
  # How else will you be sure your code does what you think it does?
end
