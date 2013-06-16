# Leap year calculator
puts'Leap Year Calculator'
puts 'Enter starting year:'
startyear = gets.chomp
puts 'Enter Ending Year:'
endyear = gets.chomp
if startyear > endyear
	bigyear = startyear
	smallyear = endyear
else
	bigyear = endyear
	smallyear = startyear
end
puts 'The leap years between ' + smallyear + ' and ' + bigyear + ' are:'
latedate = (bigyear.to_i - bigyear.to_i%4)
earlydate = (smallyear.to_i - smallyear.to_i%4)
nextdate = earlydate+4
while nextdate.to_i <= latedate.to_i
	centurytest = earlydate.to_i%100
	if centurytest == 0
		fourhundredtest = earlydate.to_i%400
		if fourhundredtest == 0
			puts nextdate.to_i
		end
	else
	nextdate = nextdate+4
	end
	if nextdate.to_i <= latedate.to_i
	puts nextdate
	end
	nextdate = nextdate+4
end