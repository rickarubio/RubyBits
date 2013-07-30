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