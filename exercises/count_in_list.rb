# Method name: count_in_list(list, item_to_count)
# Inputs:      1. a list of anything, 2. an item for us to count in the list
# Returns:     The number of times our item is contained in the input list
# Prints:      Nothing
#
# For example,
#   count_in_list([1,2,3], 1)  == 1
#   count_in_list([1,2,3], -1) == 0
#   count_in_list([1,1,1], 1)  == 3

# --- NOTE ---
# Ruby has a built-in method to do this, but the purpose of this kata is
# to write it yourself.
#
# See: http://www.ruby-doc.org/core-2.1.2/Array.html#method-i-count

def count_in_list(list, item_to_count)
  # You'll need three things:
  #  1. A running total of the number of times you've seen the item
  total=0
  #  2. A way to loop/iterate through the list
  if list.respond_to?("each")
    list.each do |item|
      if item==item_to_count
        total+=1
      end
    end
    return total
  end

  #  3. A way to add to the running total as you see the item
end

if __FILE__ == $PROGRAM_NAME
  # I'd advise putting some sanity checks here.
  p count_in_list([12,12,23,43,54,54,23],23)
  p count_in_list([23],23)
  p count_in_list([],20)
  # How else will you be sure your code does what you think it does?
end
