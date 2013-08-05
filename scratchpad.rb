search = "Super"
games = ["Super Smash Bros", 'Super Mario Bros', "Zelda", "Supper soup"]
matched_games = games.grep(Regexp.new(search))
p matched_games

# grep stands for globally search a regular expression and print

class Status
  def initialize
  end

  attr_accessor :lat
  attr_accessor :long
  attr_accessor :body
  attr_accessor :reply_id
  attr_accessor :post

  def lat(lat)
    @lat = lat
  end
end

def tweet(message, options = {})
  status = Status.new
  status.lat = options[:lat]
  status.long = options[:long]
  status.body = message
  status.reply_id = options[:reply_id]
  status.post
end
puts "testing"
Test = tweet("Practicing Ruby-Fu", :lat => 28.55, :long => -81.33, :reply_id => 227946)
p Test

class Person
  # reader
  def name
    @name
  end
  # writer
  def name=(str)
    @name = str
  end

  # You can do the above stuff like this:
  attr_reader :surname
  attr_writer :surname

  # An even better way to do the above 2 statements:
  attr_accessor :bank_balance
end
person = Person.new
p person.name
person.name = "Dennis"
p person.name
p person.surname
person.surname = "lemmings"
p person.surname
p person.bank_balance
person.bank_balance = 1337
p person.bank_balance