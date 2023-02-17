class SavingsAccount

	#This is for the interest rate for the given amount
	def interest_rate(num)
		case num
		when (0...1000)
			interest = 	0.5
			p interest
		when (1000...5000)
			interest=  1.621
			p interest
		when (5000<=num)
			interest= 2.475
			p interest
		else
			interest= 3.213
			p interest
		end
	end
	
	#This is for the update the balance after adding interest
	def annual_balance_update(number)
		interest = interest_rate(number)
		number += number * interest/100
		p number
	end
	
	#This code is for how many years it take to reach desired balance.
	def years_before_desired_balance(num1,num2)
	
		for i in 0..50 
			if num1 < num2 then
				num1 = annual_balance_update(num1)
			else
				puts i
				break
			end
		end
	end
	
end

s1= SavingsAccount.new
s1.interest_rate(200.75)
s1.annual_balance_update(200.75)
s1.years_before_desired_balance(200.75,214.88)

