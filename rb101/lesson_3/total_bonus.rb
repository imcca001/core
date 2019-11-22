=begin
def calculate_bonus(salary, eligible)
  if eligible
    bonus = salary / 2
  else
    bonus = 0
  end
  bonus
end
=end 

def calculate_bonus(salary, eligible)
  eligible ? (salary / 2) : 0
end


puts calculate_bonus(2800, true) == 1400
puts calculate_bonus(1000, false) == 0
puts calculate_bonus(50000, true) == 25000