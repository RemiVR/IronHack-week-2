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
end

song_list = Songlist.new

get '/' do

	erb :sl9exercise
end

post '/save_song' do
	song_list.add_song(params[:author], params[:name])
	redirect('/')
end

# get '/enough' do
# 	"enough"
# end