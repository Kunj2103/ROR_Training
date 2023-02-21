require 'date'

month = Array.new([31,28,31,30,31,30,31,31,30,31,30,31]) #give the array of day's of months 

date = DateTime.parse('21 March 2002 7:20:0PM IST')
curDate = DateTime.now

#below code is subtract today's date with birthday 
calcSec = curDate.sec - date.sec
calcMin = curDate.min - date.min
calcHour = curDate.hour - date.hour
calcDate = curDate.day - date.day
calcMonth = curDate.month - date.month
calcYear = curDate.year - date.year

#below code is for above calculation and if it is negative then corresponding operation will perform
if calcSec < 0 
  calcMin -= 1
  calcSec += 60
end
if calcMin < 0
  calcHour -= 1
  calcMin += 60
end
if calcHour < 0
  calcHour += 24
  calcDate -= 1
end
if calcDate < 0 then
  calcDate += month[date.month - 1]
  calcMonth -= 1
end
if calcMonth < 0 then
  calcMonth = calcMonth + 12;
  calcYear = calcYear - 1
end

puts "#{calcYear} years, #{calcMonth} months , #{calcDate} days, #{calcHour} hours #{calcMin} minutes and #{calcSec} seconds"