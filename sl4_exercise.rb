require 'pp'
class Numbermaster
	def initialize(numbers)
		@array = numbers
	end

	# def check_numbers
	# 	@array.each {|n| if n > 0}
	# end
end

number_master = Numbermaster.new([1,-2,6,4,-3,-8,5])
pp number_master.check_numbers


describe "Numbermaster" do
	before do 
		@number_master = Numbermaster.new
	end

	describe "Checking numbers" do
		it "should return all the positive number" do
			expect(@number_master.check_numbers).to eq(1,6,4,5)
		end
		it "should return all the negative numbers" do
			expect(@number_master.check_numbers).to eq(-2,-3,-8)
		end
		it "should return nil if the amount number of positive and negative numbers are the same" do
			expect(@number_master.check_numbers).to eq(nil)
		end
	end
end