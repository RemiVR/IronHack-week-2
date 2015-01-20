require 'pp'
require 'imdb'

class SeriesMaster
	def initialize(title)
		@list = {

		}
	end

	def number_of_seasons(title)
		movie = Imdb::Search.new(title).movies.first
  		@serie = Imdb::Serie.new(movie.id)
	end

	def query_for_cat
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
	describe "returns 200 'cat' query" do
		it "should look for a kitty" do
			expect(@seriesmaster.looking_for_cat).to be>=(200)
		end
	end
	describe "Best from all" do
		it "#should return Dexter when compared to Breaking bad and Sherlock" do
			expect(@seriesmaster.best_of_all(["Dexter", "Breaking Bad", "Sherlock"])).to eq('Dexter')
		end
		it "#should return Breaking Bad when compared to Dexter and Sherlock" do
			expect(@seriesmaster.best_of_all(["Dexter", "Breaking Bad", "Sherlock"])).to eq('Breaking Bad')
		end
		it "#should return Breaking Bad when compared to Dexter and Sherlock" do
			expect(@seriesmaster.best_of_all(["Dexter", "Breaking Bad", "Sherlock"])).to eq('Breaking Bad')
		end
	end
end
