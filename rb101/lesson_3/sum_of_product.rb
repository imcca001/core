def compute_sum(num)
  1.upto(num) { |value| total += value }
  total
  end

def compute_product(num)
  total = 1
  1.upto(num) { |value| total *= value}
  total
  end


int = 0
while int <= 0 do
  puts "please enter an integer greater than 0: "
  int = gets.chomp.to_i
end

sum_of_product = ''
while sum_of_product != 's' && sum_of_product != 'p' do
  puts "Enter 's' to compute the sum, 'p' to compute the product."
  sum_of_product << gets.chomp.downcase
end

if sum_of_product == 's'
  sum = compute_sum(int)
  puts "The sum of the integers between 1 and #{int} is #{sum}"
elsif sum_of_product == 'p'
  product = compute_product(int)
  puts "The product of the integers between 1 and #{int} is #{product}"
end





