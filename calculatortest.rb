require 'pp'

class Calculator
	

	def add(number_1, number_2)
		number_1 + number_2 
	end

	def subtract(number_1, number_2)
		number_1 - number_2
	end

	def multiply(number_1, number_2)
		number_1 * number_2
	end

	def divide(number_1, number_2)
		number_1 / number_2
	end

end

calculate = Calculator.new


# Test 1 - = - = - = - = 
puts "Addition test"
if calculate.add(5,6) == 15
	puts "OK"
else
	puts "FAIL"
end
