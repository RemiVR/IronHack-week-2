require 'sinatra'

set :port, 3000
set :bind, '0.0.0.0'


class Songs
	def order_songs(songs)
		songs.each {|key,value| return key + value}
	end
end

song = Songs.new()

get '/' do
	songs += 1
end

post '/songs/new' do
	songs = {
		"name1" => "title1",
		"name2" => "title2",
		"name3" => "title3",
		"name4" => "title4",
		"name5" => "title5",
		"name6" => "title6",
		"name7" => "title7",
		"name8" => "title8",
		"name9" => "title9",
		"name10" => "title10",
	}
		# "Back home" => "Fritz Kalkbrenner",
		# "Aaron" => "Paul Kalkbrenner",
		# "facing the sun" => "Fritz Kalkbrenner",
		# "Back home" => "Fritz Kalkbrenner",
end

get '/enough' do 

end