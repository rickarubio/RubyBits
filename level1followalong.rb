# Sure you could say something like this to say
# if the tweets are not empty, display them
if ! tweets.empty?
  puts "Timeline:"
  puts tweets
end

# But this way is better and more expressive:
unless tweets.empty?
  puts "Timeline:"
  puts tweets
end

# Using unless with else is confusing, and should be avoided:
unless tweets.empty?
  puts "Timeline:"
  puts tweets
else
  puts "No tweets found - better follow some people!"
end

# If you're going to using the else, then use this form:
if tweets.empty?
  puts "No tweets found - better follow some people!"
else
  puts "Timeline:"
  puts tweets
end

# NIL is false in Ruby
# Instead of writing code like this:
if attachment.file_path != nil
  attachment.post
end

# Write this instead:
if attachment.file_path
  attachment.post
end

# Not everything you think is nil will evaluate to nil (false):
# "" => true
# 0 => true
# [] => true
# Remember in Ruby only false and nil are, well, false and nil.

# Do no write code like this in Ruby:
unless name.length # this will never be false
  warn "User name required"
end

# instead of writing these couple lines:
if password.length < 8
  fail "Password too short"
end
unless username # read as: unless "this is true" do this
  fail "No user name set"
end

# Use this form instead: (inline conditionals)
fail "Password too short" if password.length < 8
fail "No user name set" unless username

# Short Circuit "AND" (if the first result is false, don't bother checking the 2nd)
if user
  if user.signed_in?
    # do stuff
  end
end

# Here is the better way to write the above code:
# if user is nil, second half never runs
if user && user.signed_in?
  # do stuff
end

# short circuit assignment
result = nil || 1 # => 1 (because nil is falsy)
result = 1 || nil # => 1
# the second part of this is never checked because the first thing is true
result = 1 || 2 # => 1

# Default Values "OR"
tweets = timeline.tweets
tweets = [] unless tweets # if nothing got returned from those tweets, set to empty array

# A better way:
# if nil, default to empty array
tweets = timeline.tweets || []

# Short Circuit Evaluation
def sign_in
  current_session || sign_user_in # if current session is nil, then call sign_user_in
end

# Conditional Assignment, Good way to set defaults
i_was_set = 1
i_was_set ||= 2
puts i_was_set # 1

i_was_not_set ||= 2 # nil || 2
puts i _was_not_set # 2

# Refactor this Code:
options[:country] = 'us' if options[:country].nil?
options[:privacy] = true if options[:privacy].nil?
options[:geotag] = true if options[:geotag].nil?
# use conditional assignment operator
options[:country] ||= 'us'
options[:privacy] ||= true
options[:geotag] ||= true

# Conditional Return Values













