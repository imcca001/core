# mortgage loan calculator

def floatable?(num)
  num.to_f.to_s == num
end

puts "Welcome to the loan calculator"

p = ''
loop do
  print "Entr the loan amount you want in dollars: "
  p = gets().chomp()
  if floatable?(p)
    break
  else
    puts "Hmm.. that is not a floatable number, please try again!"
  end
end

apr = ''
loop do
  print "Enter the APR of the loan: "
  apr = gets().chomp()
  if floatable?(apr)
    break
  else
    puts "Hmm.. that is not a floatable number, please try again!"
  end
end

len = ''
loop do
  print "Enter the duration of the loan in years: "
  len = gets().chomp()
  if floatable?(len)
    break
  else
    puts "Hmm.. that is not a floatable number, please try again!"
  end
end

j = apr.to_f / 12
n = len.to_f * 12

m = p.to_f * (j / (1 - (1 + j)**(-n)))

puts "Your monthly payment is $#{format('%02.2f', m)} dollars."