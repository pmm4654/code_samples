print "What's your name? "
name = gets.chomp # waits for user input
name.capitalize!


print "What city are you from? "
city = gets.chomp
city.capitalize!

print "What state or province are you from? "
state = gets.chomp
state.upcase!

puts "Hi, #{name}! Your hometown (#{city}, #{state}) is the worst!! Juuust kidding"