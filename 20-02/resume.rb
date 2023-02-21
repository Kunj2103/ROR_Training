
puts "Enter following details for building Resume"

puts "Enter your full name"
fName = gets.chomp
puts "Enter your Address"
address = gets.chomp
puts "Enter your Phone Number"
phoneNumber = gets.chomp.to_i
puts "Enter your Email Address"
email = gets.chomp
puts "Enter your Qualifications"
qualification = gets.chomp
puts "Enter your Work Experience if you have"
experience = gets.chomp
puts "Enter your Skills"
skills = gets.chomp
puts "Enter your Certification if You have"
certifications = gets.chomp

file = File.new("Resume.txt","a+") #this will create file with append mode so that we can append the content in the file 

file.syswrite("Full Name : #{fName}\n")
file.syswrite("Address : #{address}\n")
file.syswrite("Phone Number : #{phoneNumber}\n")
file.syswrite("Email Address : #{email}\n")
file.syswrite("Qualifications : #{qualification}\n")
file.syswrite("Experience : #{experience}\n")
file.syswrite("Skills : #{skills}\n")
file.syswrite("Certifications : #{certifications}\n")