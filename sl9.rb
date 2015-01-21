require 'sinatra'
require 'sinatra/reloader'

set :port, 3001
set :bind, '0.0.0.0'

songs ||= []

get '/' do

end

post '/save_songs' do
	songs << params[:name]
	redirect('/')
end