require 'sinatra'

set :port, 3000
set :bind, '0.0.0.0'

songs ||= 0
get '/' do
	songs
end

post '/songs/new' do
	@songs = {
		"name" => "title",
		"name" => "title",
		"name" => "title",
		"name" => "title",
		"name" => "title",
		"name" => "title",
		"name" => "title",
		"name" => "title",
		"name" => "title",
		"name" => "title",
		# "Back home" => "Fritz Kalkbrenner",
		# "Aaron" => "Paul Kalkbrenner",
		# "facing the sun" => "Fritz Kalkbrenner",
		# "Back home" => "Fritz Kalkbrenner",
	}
end

