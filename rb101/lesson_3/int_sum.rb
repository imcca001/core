=begin
def int_sum(num)
  arr = num.to_s.split('')
  sum = 0
  arr.each do |num|
    sum += num.to_i
  end
  sum
end
=end

def int_sum(num)
  sum = num.to_s.split('').map(&:to_i).reduce(:+)
end


puts int_sum(23) == 5
puts int_sum(496) == 19
puts int_sum(123_456_789) == 45