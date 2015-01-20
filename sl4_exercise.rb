require 'pp'
class Numbermaster
	def initialize(numbers)
		@array = numbers
	end

	def positive_numbers
		@positive = @array.select {|n| n > 0}
	end

	def negative_numbers
		@negative = @array.select {|n| n < 0}
	end

	def diff_of_numbers
		if @positive == @negative
			return nil
		end
	end
end

number_master = Numbermaster.new([1,-2,6,4,-3,-8,5])
pp number_master.diff_of_numbers


describe "Numbermaster" do
	before do 
		@number_master = Numbermaster.new([1,-2,6,4,-3,-8,5,-7])
	end

	describe "Checking numbers" do
		it "should return all the positive number" do
			expect(@number_master.positive_numbers).to eq([1,6,4,5])
		end
		it "should return all the negative numbers" do
			expect(@number_master.negative_numbers).to eq([-2,-3,-8,-7])
		end
		it "should return nil if the amount number of positive and negative numbers are the same" do
			expect(@number_master.diff_of_numbers).to eq(nil)
		end
	end
end