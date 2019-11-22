def factors(number)
  divisors = number
  factors = []
  while divisors > 0 do 
    factors << number / divisors if number % divisors == 0
    divisors -= 1
  end
  factors
end

puts factors(9)

