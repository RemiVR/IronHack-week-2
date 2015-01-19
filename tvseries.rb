require 'pp'
require 'imdb'

class SeriesMaster
	def initialize
	end
	
	def looking_for_cat
		cat = Imdb::Search.new('cat')
		cat.movies.size
	end
end

seriesmaster = SeriesMaster.new
pp seriesmaster.looking_for_cat

describe "SeriesMaster" do
	before do
		@seriesmaster = SeriesMaster.new
	end
	describe "looking for a cat" do
		it "should look for a kitty" do
			expect(@seriesmaster.looking_for_cat).to eq(200)
		end
	end
	describe "High rated series" do
		it "#should return highest rating" do
			expect(@seriesmaster.highest_rating)
		end
		it "#should return the most seasons" do
			expect(@seriesmaster.most_seasons)
		end
		it "#should "
	end
end
