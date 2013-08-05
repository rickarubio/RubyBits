# Level 2: Methods & Classes

# Optional Arguments
def tweet(message, lat, long)
  # do stuff
end

tweet("Practicing Ruby-Fu!", nil, nil)

# location isn't always used, so add defaults
def tweet(message, lat = nil, long = nil)
  # do stuff
end
tweet("Practicing Ruby-Fu!") # the location is now optional

# Named Arguments - Hash
# So say your parameter list keeps growing:
def tweet(message, lat = nil, long = nil, reply_id = nil) #getting annoying
  # do stuff
end

# calls are now harder to read
tweet("Practicing Ruby-Fu", 28.55, -81.33, 227946)
# You also have to keep placeholders for arguments you are not using
tweet("Practicing Ruby-Fu", nil, nil, 227946)

# To solve the above, use an options hash

# Hash Arguments
def tweet(message, options = {})
  status = Status.new
  status.lat = options[:lat]
  status.long = options[:long]
  status.body = message
  status.reply_id = options[:reply_id]
  status.post
end

# method calls are much easier to read now:
# the keys show meaning
tweet("Practicing Ruby-Fu", :lat => 28.55, :long => -81.33, :reply_id => 227946)

# The above rewritten using Ruby 1.9 hash syntax (looks more like json)
tweet("Practicing Ruby-Fu", lat: 28.55, long: -81.33, reply_id: 227946)

# Exceptions
def get_tweets(list)
  if list.authorized?(@user)
    list.tweets
  else
    [] # this is considered a "magic" return value
  end
end

tweets = get_tweets(my_list)
if tweets.empty?
  alert "No tweets were found!" + "Are you authorized to access this list?"
end

# Here is a better way to write the above code for exceptions:
def get_tweets(list)
  unless list.authorized?(@user)
    raise AuthorizationException.new
  end
  list.tweets
end

begin
  tweets = get_tweets(my_list)
rescue AuthorizationException
  warn "You are not authorized to access this list."
end

# Ruby "Splat" Arguments
def mention(status, *names)
  tweet("#{names.join(' ')} #{status}")
end
# splat argument signifies that we are sending in an array, 0 to many parameters

# You need a class when...
user_names = [
  ["Ashton", "kutcher"],
  ["Wil", "Wheaton"],
  ["Madonna"]
]
user_names.each {|n| puts "#{n[1]}, #{n[0]}"}

class Name
  def initialize(first, last = nil)
    @first = first
    @last = last
  end
  def format
    [@last, @first].compact.join(', ')
  end
end
















