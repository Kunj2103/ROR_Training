
CITY="Ahmedabad"

class User
	def userCity
		puts "User is from #{CITY}"
	end
end

class Company
	def companyCity
		puts "Company is located in #{CITY}"
	end
end

user1 = User.new
user1.userCity
company = Company.new
company.companyCity
