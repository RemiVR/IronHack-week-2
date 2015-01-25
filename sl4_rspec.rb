require_relative 'sl4_exercise.rb'

describe "Numbermaster" do
	before do 
		@number_master = Numbermaster.new([1,-2,6,0,4,-3,-8,6,5,-7])
	end

	describe "Checking positive and negative numbers" do
		it "should return all the positive number" do
			expect(@number_master.positive_numbers([1,-2,6,0,4,-3,-8,5,-7])).to eq([1,4,5,6,6])
		end
		it "should return all the negative numbers" do
			expect(@number_master.negative_numbers([1,-2,6,0,4,-3,-8,5,-7])).to eq([-8,-7,-3,-2])
		end
		it "should return nil if the amount number of positive and negative numbers are the same" do
			expect(@number_master.diff_of_numbers([1,-2,6,0,4,-3,-8,5,-7])).to eq(nil)
		end
	end

	describe "Get the mode, median, mean and size of the array" do
		it "should return mode of the given array" do
			expect(@number_master.check_mode([1,-2,6,0,4,-3,-8,5,-7])).to eq(nil)
		end
		it "should return median of the given array" do
			expect(@number_master.check_median([1,-2,6,0,4,-3,-8,5,-7])).to eq()
		end
	end
end