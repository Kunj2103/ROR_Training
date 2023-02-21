require 'date'

class Year_between
  puts "Start Year"
  strtYear = gets.chomp.to_i
  puts "End Year"
  endYear = gets.chomp.to_i
  puts "date: "
  date = gets.chomp

  format = "%d-%m-%Y "
  userDate = DateTime.parse(date) #for parse the string date to the convert DateTime object

  if (strtYear..endYear) === userDate.year #Check if the user input year is between the range of year or not
    puts "Yes, #{userDate.strftime(format)}is between #{DateTime.new(strtYear).strftime(format)}to #{DateTime.new(endYear).strftime(format)}"
  else
    puts "No, #{userDate.strftime(format)} is not between #{strtYear.strftime(format)} to #{endYear.strftime(format)}"
  end
end