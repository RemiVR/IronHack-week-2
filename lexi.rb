class Lexiconomitron
	def shazam(array)
		string = array.map {|word| word.reverse}
		rev_string = string.map {|w| w.downcase.gsub"t",""}
		array = [rev_string.first,rev_string.last]
	end

	def oompa_loompa(array)
		array.select {|word| word.length <= 3}
	end

	def all_in_line(array)
		string = array.sort_by! {|word| word.length}.reverse
		tless = string.map {|w| w.downcase.gsub"t",""}
		tless.join("X")

	end
end

describe "Lexiconomitron" do
	before do 
		@lexiconomitron = Lexiconomitron.new
	end
	
	describe "shazam magic" do
		it "should return reverse words in the array and devour letter 'T'" do
			expect(@lexiconomitron.shazam(["This", "is", "a", "boring", "test"])).to eq(["sih", "se"])
		end
	end

	describe "confusion of oompa loompa" do
		it "should delete words that ar longer than 3 characters" do
			expect(@lexiconomitron.oompa_loompa(["if", "you", "wanna", "be", "my", "lover"])).to eq(["if", "you", "be", "my"])
		end
	end

	describe "all in line!" do
		it "should return a string sorted from longest to shortest with delimeter X" do
			expect(@lexiconomitron.all_in_line(["this", "world", "is", "completly", "amazing"])).to eq("complelyXamazingXworldXhisXis")
		end
	end
end