require 'sinatra'
require 'sinatra/reloader'

set :host, 3008


get '/' do
	"Hello world"
end


# class Activists
#     attr_accessor :activists, :users, :user_id
#     def initialize
#     @activists = []
#     @users ||= 0
#     @user_id ||= 0
#     end

#     def add_activist(activist)
#         @users += 1
#         @activists << activist
#     end
#     def add_id
#     	@user_id += 1
#     end
# end

# subscriber = Activists.new

# get '/' do  
#    @activists = subscriber.activists
#    @number_of_users = subscriber.users
#    @user_id = session[:user_id]
#     erb(:sl11)
# end

# get '/signup' do
# 	@activists = subscriber.activists
# 	@number_of_users = subscriber.users
# 	subscriber.add_id
# 	session[:user_id] = subscriber.user_id
# 	erb(:signup)
# end

# post '/signup' do
#     subscriber.add_activist(params[:name])
#     redirect('/')
# end