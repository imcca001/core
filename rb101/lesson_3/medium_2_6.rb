=begin
def color_valid(color)
  if color == "blue"
    true
  elsif color == "green"
    false
  end
end
=end

def color_valid(color)
  color == "blue" || color == "green"
end

blue = 'blue'
p color_valid(blue)