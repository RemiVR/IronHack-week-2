require 'sinatra'
require 'sinatra/reloader'

set :port, 3001
set :bind, '0.0.0.0'

class Songlist
	def initialize
		@songs = []
	end
	def add_song(author,name)
		@songs << {author: author, name: name}
	end
	def songs_list
		@songs.map {|song| "#{song[:author]} #{song[:name]}" }.join("<br />")
	end
end

list = Songlist.new

get '/' do
	list.songs_list
	erb :sl9exercise
end

post '/save_song' do
	song_list.add_song(params[:author], params[:name])
	redirect('/')
end

# get '/enough' do
# 	"enough"
# end