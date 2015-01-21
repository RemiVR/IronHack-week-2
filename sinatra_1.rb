require 'sinatra'
require 'sinatra/reloader'

set :port, 3000
set :bind, '0.0.0.0'

class SongList
	attr_accessor :songs
	def initialize
		@songs = []
	end
	def add_song(name,artist)
		@songs << {name: name, artist: artist}
	end
	def total
		@songs.size
	end
end

list = SongList.new

get '/' do
	list.songs
end

post '/songs/new' do
	if songs.size >= 10
		redirect('/enough')
	else
		list.add_song(params[:name],params[:artist])
		redirect('/')
	end
end


get '/enough' do 
	'IS WORTH F***ING NOTHING'
end