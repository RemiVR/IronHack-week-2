require 'pp'

class Numbermaster
	include Enumerable
	def check_numbers(numbers)
		@positive = numbers.sort.select {|number| number > 0}
		@negative = numbers.sort.select {|number| number < 0}
		if @positive.size == @negative.size
			nil
		elsif @positive.size > @negative.size
			@positive
		elsif @positive.size < @negative.size
			@negative
		end
	end


	def find_values(numbers)
		
		freq = Hash.new(0)
        numbers.each {|number| freq[number] += 1}
        a = freq.sort_by {|key, number| number}
        mode = a.to_a[-1][0] 



		median = numbers.sort
  		median = numbers.size/2

		mean = numbers.inject{|sum,n| sum + n} / numbers.size

		size = numbers.size
		# numbers
		# 	sorted = @array.sort
		# med = sorted.length / 2
		[mode, median, mean, size]
	end
end
# number_master = Numbermaster.new
# pp number_master.find_values([1,2,6,4,3,6,8])


describe "Numbermaster" do
	before do 
		@number_master = Numbermaster.new
	end

	describe "Checking positive and negative numbers" do
		it "should return all the positive number" do
			expect(@number_master.check_numbers([1,-2,6,0,4,-3,-8,6,5,-7])).to eq([1,4,5,6,6])
		end
		it "should return all the negative numbers" do
			expect(@number_master.check_numbers([1,-2,6,0,-4,-3,-8,6,5,-7])).to eq([-8,-7,-4,-3,-2])
		end
		it "should return nil if the amount number of positive and negative numbers are the same" do
			expect(@number_master.check_numbers([1,-2,6,0,4,-3,-8,5,-7])).to eq(nil)
		end
	end

	describe "Get the mode, median, mean and size of the array" do
		it "should return mean of the given array" do
			expect(@number_master.find_values([1,2,6,4,6,3,8])).to eq([6, 3, 4, 7])
		end
	end
end
