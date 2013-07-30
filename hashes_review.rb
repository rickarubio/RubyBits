# Quick Refresher on Hashes
# http://rubylearning.com/satishtalim/ruby_hashes.html

# Hashes are indexed collections of object references
# Arrays are indexed with integers
# Hashes can be indexed with objects of any type

# To store a value in a Hash, you supply two objects
# the index (called the key) and the value

# You can retrieve the value by indexing the hash with the same key
# The values in a hash can be objects of any type

# This array holds 3 object references, indexed as 0, 1, 2
an_array = [1,2,3]
# Accessing index 0 of the array an_array
puts an_array[0] # => 1

# Now for Hashes...
# Hash literals
# key => value pair
a_hash = {'cat' => 'kitteh von winklestein', 'dog' => 3.14}
puts " hash length is #{a_hash.length}"
puts a_hash['cat']
puts a_hash['dog']

# The advantage of using a hash over an array is that you can use
# Any object as an index

# If you try access a key that does not exist in the hash, the default value is nil

# Returns an array of every Symbol used in my program
puts Symbol.all_symbols.inspect

# Instead of Strings, use Symbols for Hash keys (indexes), as they are more efficient
people = Hash.new
people2 = {:cat => 'mr.nachos', :dog => 'barky'}
# Notice there are the two difference ways of assigning keys to Hashes
# Either during first initialization of the Hash, or after once the Hash has been made.
people[:nickname] = 'Rick'
people[:lastname] = 'Rubio'

p people
p people2

# Instead of using Hashrocket => you can use : but the Hashrocket is the Ruby preferred way
people3 = {store: 'Ikea', color: 'maroon', price: 'inexpensive'} # note that this will not work with a numeric key
p people3

# Just like Arrays, I should be able to use Enumerable methods
people3.each do |key, value|
  print key.to_s + " => "
  print value
  puts
end

# Also keep in mind that in IRB, hashrocket => tells you what the statement you just ran returned, not the value