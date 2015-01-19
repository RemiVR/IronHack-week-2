require 'pp'
class SeriesMaster
	def initialize
		@tv_series = {
			"Breaking bad" => 8,
			"Walking dead" => 7,
			"Californication" => 9
		}
	end
	def highest_rating
		@tv_series.values.sort.last
	end

	# def compare
	# 	if @tv_series["Breaking bad"] == @tv_series["Walking dead"]
	# end
end

series_master = SeriesMaster.new
pp series_master.highest_rating

describe "SeriesMaster" do
	before do
		@seriesmaster = SeriesMaster.new
	end

	describe "Higher rated series" do
		it "should return highest rating" do
			expect(@seriesmaster.highest_rating)
		end
	end
end
