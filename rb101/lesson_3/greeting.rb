puts "What is your name?"
name = gets.chomp

if name.include?("!")
  puts "HELLO #{name.upcase}. WHY ARE WE SCREEMING?"
else
  puts "Hello #{name}."
end