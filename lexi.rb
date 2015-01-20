class Lexiconomitron
	def shazam(string)
		array = string.map {|word| word.reverse}
		array.map {|w| w.downcase.gsub"t",""}
	end
end

describe "Lexiconomitron" do
	before do 
		@lexiconomitron = Lexiconomitron.new
	end
	
	describe "shazam magic" do
		it "should return reverse words in the array and devour letter 'T'" do
			expect(@lexiconomitron.shazam(["This", "is", "a", "boring", "test"])).to eq(["sih", "si", "a", "gnirob", "se"])
		end
	end
end