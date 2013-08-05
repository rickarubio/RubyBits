# Ruby Procs & Lambdas Review
# http://www.robertsosinski.com/2008/12/21/understanding-ruby-blocks-procs-and-lambdas/

# Ruby blocks, procs, and lambdas are referred to as "closures" in computer science

array = [1,2,3,4]
array.collect! do |n|
  n ** 2 #exponent
end
p array

class Array
  def iterate!
    self.each_with_index do |n, i|
      self[i] = yield(n)
    end
  end
end

array = [1,2,3,4]
array.iterate! do |n|
  n ** 2
end
puts array.inspect

# As seen in examples above, using yield is one way to use yoru block of code.

# Another way to do the above, by using proc
class Array
  def iterate!(&code)
    self.each_with_index do |n, i|
      self[i] = code.call(n) # call our block of code, get result, then assign it to self[i]
    end
  end
end
array = [1,2,3,4]
array.iterate! {|n| n**2}
puts array.inspect

# Unary &
# This is almost the equivalent of calling #to_proc on the object, but not quite

# Ruby has 2 kind of code blocks: Blocks and Procs
# Main difference is you can define and reference Procs and assign them to variables

# All methods have one and only one implicit Block argument, whether you use it or not.
# You access it by calling yield in the method body.

# Procs fall into two categories: Procs that are lambda procs, and procs that aren't.

# Lambdas are defined using lambda whereas simple procs are defined using Proc.new or proc
p [1,2,3].map(&:to_s)

# The only difference between blocks and Procs is that a block is Proc that cannot be saved,
# and as such, is a one time use solution.







