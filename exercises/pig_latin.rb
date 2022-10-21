# Method name: pig_latin
# Inputs:      A string representing a single word (i.e., no spaces)
# Returns:     The word translated into "pig latin"
# Prints:      Nothing

# Note #1
# There are two rules for translating something into "pig latin":
#   1. If a word begins with a consonant or sequence of consonants, move the
#      sequence of consonants  to the end of the word and then append "ay"
#   2. If a word begins with a vowel, just append "ay"
#
# See: http://en.wikipedia.org/wiki/Pig_Latin#Rules
#
# Here are some examples:
# pig_latin("happy") == "appyhay"

def pig_latin(word)
  index=0
  list=Array.new(["a","e","i","o","u"])
  if list.include?(word[0])
    word+"ay"
  else
    for item in 0..word.length
      if list.include?(word[item])
        break
      else
        index+=1
      end
    end
    for i in (index..(word.length))
      print word[i]
    end
    for i in (0..(index-1))
      print word[i]
    end
    print "ay"
  end
end

if __FILE__ == $PROGRAM_NAME
  p pig_latin("happy")
  p pig_latin("duck")
  p pig_latin("glove")  # Notice what happened to "gl"

  p pig_latin("egg")
  p pig_latin("inbox")
  p pig_latin("eight")
end
