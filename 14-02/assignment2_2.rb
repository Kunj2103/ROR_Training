for i in 1..5
	if i>=5 then 
		break #this statement is break the loop when 5 is occur and it will print all the number before 5
	end
	
	puts "#{i} is occur before the break statement"
	
end


for j in 1..10
	if j==2 then
		next  #This will skip that iteration when the loop condition is satisfied
	end
	puts "#{j} is not skip"
	
end

