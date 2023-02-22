file = File.open("phonebook.txt","r")
content = file.sysread(100).chomp.split("}")[0].split("{")[1].split(", ")
hash = {}
i = 0


while i<content.length
  hash[content[i].split(": ")[0].split("'")[1]] = content[i].split(": ")[1].split("'")[1].to_i
  i+=1 
end


reuse_code = lambda{
  write = File.open('phonebook.txt',"w")
  temp = "{"
    hash.each do |k,v|
      temp += "'"+k + "': '" + v.to_s + "', "
    end
    temp += "}"
    write.write(temp)
}

puts "1. Find Number with Person's Name"
puts "2. save new number with name."
puts "3. delete number by name or by number if present"
puts "4. Display phonebook"

choice = gets.chomp.to_i

case 
  when choice == 1
    puts "Enter name"
    name = gets.chomp
    puts hash[name]

  when choice == 2
    puts "Enter Name"
    name = gets.chomp
    puts "Enter number"
    num = gets.chomp.to_i
    if hash.has_key? name
      puts "Name already Exists"
    elsif hash.key(num) == nil
      hash[name] = num
      reuse_code.call
    else 
      puts "Number is already Exist"
    end
  when choice == 3
    puts "1. Delete by Name"
    puts "2. Delete by Number"
    choice2 = gets.chomp.to_i
    case 
      when choice2 == 1
        puts "Enter Name"
        name = gets.chomp
        hash.delete(name)
        reuse_code.call
      when choice2 == 2
        puts "Enter Number"
        num = gets.chomp.to_i
        hash.delete(hash.key(num)) 
        reuse_code.call
    end
  when choice == 4
    puts hash
  else
    puts "Wrong Choice!!"
end