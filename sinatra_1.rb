require 'sinatra'
require 'sinatra/reloader'

set :port, 3000
set :bind, '0.0.0.0'

class SongList
	def order_list
		songs = ["Back home - Fritz Kalkbrenner", "Aaron - Paul Kalkbrenner", "facing the sun - Fritz Kalkbrenner", "Back home - Fritz Kalkbrenner",]
		
	end
end

get '/' do
	list = SongList.new
	ordered_list = list.order_list
end

post '/songs/new' do
	if songs >= 10
		redirect('/enough')
	else
		redirect('/')
	end
end


get '/enough' do 
	
end