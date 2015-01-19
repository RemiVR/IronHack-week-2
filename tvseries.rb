class SeriesMaster
	def initialize
		@tv_series = Hash[
			"Breaking bad" => 8,
			"Walking dead" => 7,
			"Californication" => 9
		]
	end
	def compare
		if @tv_series["Breaking bad"] == @tv_series["Walking dead"]
			"yay"
		else
			"fail"
		end
	end
end


series_master = SeriesMaster.new
puts series.compare

describe "SeriesMaster" do
	before do
		@seriesmaster = SeriesMaster.new
	end

	describe "Higher rated series"
		it "should evaluate higher ratings" do
			expect(true)
		end
	end
end
