=begin

def count_instances(arr)
for each element in the array
  cout the instances of that element and add the element and number to a collection as a key vlaue pair. 
end

for each element in that key value pair 
  puts the key => and the number 
end
=end

vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

def count_instances(arr)
  coll = {}
  arr.each do |model|
    coll[model] = arr.count(model)
  end

  coll.each do |model, number|
    puts "#{model} => #{number}"
  end
end

count_instances(vehicles)

















