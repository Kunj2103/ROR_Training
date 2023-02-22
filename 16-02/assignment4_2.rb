class Calculator
  puts "Enter First operand"
  @operand1 = gets.chomp.to_i
  puts "Enter Second operand"
  @operand2 = gets.chomp.to_i

  puts "What operation you want to perform"
  puts "1. Sum"
  puts "2. Subtract"
  puts "3. Multiply"
  puts "4. Division"

  @option = gets.chomp.to_i;
  case 
  when @option == 1
    sum = Proc.new {|op1,op2| op1+op2}
    puts sum.call(@operand1,@operand2)
  when  @option == 2
    sum = Proc.new {|op1,op2| op1-op2}
    puts sum.call(@operand1,@operand2)
  when  @option == 3
    sum = Proc.new {|op1,op2| op1*op2}
    puts sum.call(@operand1,@operand2)
  when @option == 4
    sum = Proc.new {|op1,op2| op1/op2}
    puts sum.call(@operand1,@operand2)    
  end

end
