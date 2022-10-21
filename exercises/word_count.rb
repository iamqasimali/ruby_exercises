# Method name: word_count
# Input: A string representing an English sentence
# Returns: The number of words in the sentence
# Prints: Nothing
#
# Although it's more complicated in reality, we'll just pretend
# that sequence of spaces in a sentence designates the start of a new word.
# That means we don't care about how many spaces are between two words, only
# that there is at least one.

def word_count(string)
  # Hint: You'll want to use String#split
  arr=Array.new
  arr=string.split(" ")
  return arr.length
  # See: http://www.ruby-doc.org/core-2.1.2/String.html#method-i-split
end

if __FILE__ == $PROGRAM_NAME
  p word_count("apple")
  p word_count("123...321")
  p word_count("one two three")
  p word_count("This sentence has five words.")
  p word_count("No-spaces-here")
  p word_count("")   # Empty string
  p word_count(" ")  # A string consisting of a single space

  # It's probably worth having a few more sanity checks.
  # What are some input strings that might be tricky to handle?
  # How about where the answer to "How many words?" is less clear-cut?
end
