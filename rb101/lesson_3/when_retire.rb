puts "What is your age?"
age = gets.chomp.to_i

puts "At what age would you like to retire?"
retire_age = gets.chomp.to_i

puts "It's 2019. You will retire in #{2019 + (retire_age - age)}." + \
     "You only have #{retire_age - age} years of work to go!"

