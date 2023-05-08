# This is a practice file for the Ruby language
# Author: Alexander J Daigh

n_l = [3,2,6,1,2,7,8,9,23]

def Mean (number_list = [])
	total = 0.0
	number_list.each do |a_num|
		total += a_num
	end
	average = total/number_list.length
	return average.round(5)
end

def Median (number_list = [])
	list = number_list.sort
	med_ind = (list.length/2).floor()
	if med_ind % 2 != 0
		num1 = list[med_ind-1]
		num2 = list[med_ind]
		total = 0.0 + num1 + num2
		return total/2
	end
	return list[med_ind]
end

def Variance (number_list = [])
	total = 0.0
	avg = Mean(number_list)
	number_list.each do |x|
		total += (x-avg)**2
	end
	return (total/(number_list.length - 1)).round(5)
end

def SquareRoot (number)
	guess = number/10.0
	better_guess = number
	finished = false
	while !finished
		better_guess = (guess + (number / guess))/2.0
		if guess.round(5) == better_guess.round(5)
			finished = true
		end
		guess = better_guess
	end
	return guess
end

def StdEV(number_list = [])
	return SquareRoot(Variance(number_list))
end


puts "Running simulation on list: #{n_l}"

puts "Mean = #{Mean(n_l)}"
puts "Median = #{Median(n_l)}"
puts "Variance = #{Variance(n_l)}"
puts "Standard Deviation = #{StdEV(n_l)}"






