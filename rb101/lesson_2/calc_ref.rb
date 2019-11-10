# ask user for two numbers
# ask the user for an operation to preform
# perform the operation on the two numbers
# output the result
require 'yaml'
MESSAGES = YAML.load_file('calculator_messages.yml')

def prompt(message)
  Kernel.puts("=> #{message}")
end

=begin
def valid_number?(num)
  num.to_i() != 0
end
=end

def valid_number?(input)
  input.to_i.to_s == input
end

def operation_to_message(op)
  word = case op
  when '1'
    'Adding'
  when '2'
    'Subtracting'
  when '3'
    'Multiplying'
  when '4'
    'Dividing'
  end
   word
end

prompt(MESSAGES['welcome'])

name = ''
loop do
  name = Kernel.gets().chomp()

  if name.empty?()
    prompt(MESSAGES['valid_name'])
  else
    break
  end
end

prompt("Hi #{name}!")

loop do

  number1 = ''
  loop do
    prompt(MESSAGES['first_num'])
    number1 = Kernel.gets().chomp()
    if valid_number?(number1)
      break
    else
      prompt(MESSAGES['not_valid'])
    end
  end

  number2 = ''
  loop do 
    prompt(MESSAGES['not_valid'])

    number2 = Kernel.gets().chomp()

    if valid_number?(number2)
      break
    else
      prompt(MESSAGES['not_valid'])
    end
  end
  
  operator_prompt = <<-MSG
    What operation would you like to perform?
     1) add 
     2) subtract 
     3) multiply 
     4) divide")
  MSG

  prompt(operator_prompt)
  
  operator = ''
  loop do
    operator = Kernel.gets().chomp()

    if %w(1 2 3 4).include?(operator)
      break
    else
      prompt("Must choose 1, 2, 3 or 4")
    end
  end
  
  prompt("#{operation_to_message(operator)} the two numbers...")

  result = case operator
           when '1'
             result = number1.to_i + number2.to_i
           when '2'
             result = number1.to_i - number2.to_i
           when '3' 
             result = number1.to_i * number2.to_i
           when '4'
             result = number1.to_f / number2.to_f
  end

  prompt("The results is #{result}")
  
  prompt(MESSAGES['next_calc'])

  answer = Kernel.gets().chomp()
  break unless answer.downcase().start_with?('y')
end

prompt(MESSAGES['thanks'])
