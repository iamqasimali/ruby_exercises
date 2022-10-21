# Method name: time_format
# Inputs:      A number, representing seconds
# Returns:     A string, describing the number of weeks, days, minutes, seconds
# Prints:      Nothing

# Remember when we wrote the countdown clock to count down from 5 minutes?
# Let's write a method that takes in an integer, representing a number of
# seconds, and returns a string describing larger chunks of time.  For example,
#
#   time_format(1234)  == "20m 34s"
#   time_format(12345) == "3h 25m 45s"
#
# This should support weeks, days, hours, minutes, and seconds.

def time_format(seconds)
  week=(seconds/604800)
  days=(seconds-(week*604800))/86400
  hours=(seconds-(week*604800)-(days*24*3600))/3600
  minutes=(seconds-(week*604800)-(days*86400)-(3600*hours))/60
  second=(seconds-(week*604800)-(days*86400)-(60*minutes)-(3600*hours))
  "#{week}w #{days}d #{hours}h #{minutes}m #{second}s"
end

if __FILE__ == $PROGRAM_NAME
  # Write your own test cases!  These four won't suffice.
  # Notice that we're looking at "edge" cases. We likely want to test
  # the boundaries where the parts "flip over", and also one output on
  # each side of that boundary, i.e., exactly 1 hour, 1 hour plus 1 second,
  # and 1 hour minute 1 second.
  #
  # Why? This is where our code is most likely to "go wrong."

  p time_format(0)
  p time_format(1)

  p time_format(59)
  p time_format(60)
  p time_format(61)
  p time_format(1209500)
  p time_format(3600)
end
