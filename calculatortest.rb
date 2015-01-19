require 'pp'

class Calculator
	def initialize(number_1, number_2)
		@number_1 = number_1
		@number_2 = number_2
	end

	def add
		@number_1 + @number_2 
	end

	def subtract
		@number_1 - @number_2
	end

	def multiply
		@number_1 * @number_2
	end

	def divide
		@number_1 / @number_2
	end

end

calculate = Calculator.new(6,"bob")
pp calculate.subtract

# Test 1
if "bob".to_i? 
	puts "OK"
else
	puts "FAIL"
end
