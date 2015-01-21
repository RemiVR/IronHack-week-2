require 'sinatra'
require 'sinatra/reloader'

set :port, 3001
set :bind, '0.0.0.0'

class Songlist
	attr_accessor :songs
	def initialize
		@songs = []
	end
	def add_song(author,name)
		@songs = {author: author, name: name}
	end
end

song_list = Songlist.new

get '/' do
	@song_list = song_list.songs
	erb :sl9exercise
end

post '/save_song' do
	song_list.add_song(params[:author],params[:name])
	redirect('/')
end