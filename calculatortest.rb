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


# calculate = Calculator.new

# # Test 1 - = - = - = - = 
# puts "Addition test"
# if calculate.add(5,6) == 15
# 	puts "OK"
# else
# 	puts "FAIL"
# end


describe Calculator do
	before do
		@calculator = Calculator.new
	end
	describe "#addition" do
		it "should add 5 and 6" do
			expect(@calculator.add(5,6)).to eq(11)
		end

		it "should add 0 and 4" do
			expect(@calculator.add(0,4)).to eq(4)
		end
	end
end