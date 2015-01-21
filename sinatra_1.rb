require 'sinatra'

set :port, 3000
set :bind, '0.0.0.0'


get '/' do
	songs += 1
end

post '/songs/new' do
	songs = ["Back home - Fritz Kalkbrenner",
		 "Aaron - Paul Kalkbrenner",
		 "facing the sun - Fritz Kalkbrenner",
		 "Back home -Fritz Kalkbrenner",
end

get '/enough' do 

end