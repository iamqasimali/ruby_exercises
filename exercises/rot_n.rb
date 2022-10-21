# Method name: rot_n
# Inputs:      A String to be encoded plus an integer to "rotate" by
# Returns:     A ROT-N encoded message
# Prints:      Nothing

# In a previous kata, we wrote a ROT13 method.  In this one, we will write
# a ROT-N method.

# e.g., rot13(string) == rot_n(string, 13)
def rot_n(word, n)
  s="abcdefghijklmnopqrstuvwxyz"
  c="ABCDEFGHIJKLMNOPQRSTUVWXYZ"
  (word.length).times { |i|
    if word[i]==" "
      print " "
    end
    if s.include?(word[i])
      if i<=n
        print  "#{s[s.index(word[i]) + n]}"
      else
        print "#{s[s.index(word[i]) %n+1]}"
      end
    elsif c.include?(word[i])
      if i<=n
        print  "#{c[c.index(word[i]) + n]}"
      else
        print "#{c[c.index(word[i]) %n+1]}"
      end
    end
  }
end

if __FILE__ == $PROGRAM_NAME
  rot_n("ameer",13)
  # See http://www.rot-n.com/ to generate test inputs and outputs
end
