require 'sinatra'
require 'sinatra/reloader'

set :port, 3000
set :bind, '0.0.0.0'
visits = 0

class SongList
	def initialize
		songs = []
	end
	def add
		songs << {name: name, artist: artist}
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
	“IS WORTH F***ING NOTHING”
end