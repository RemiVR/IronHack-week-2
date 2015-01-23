require 'rubygems'
require 'active_record'
require 'sinatra'
require 'sinatra/reloader' if development?

set :port, 3005

enable :sessions

ActiveRecord::Base.establish_connection(
  adapter: 'sqlite3',
  database: 'shouter.sqlite'
)

class User < ActiveRecord::Base
  validates :name, presence: true
  validates :handle, presence: true, uniqueness: true
  validates :password, length: {minimum: 20}, uniqueness: true
  has_many :shouts
end

class Shout < ActiveRecord::Base
  validates_numericality_of :number_of_letters, greater_than: 0 
  belongs_to :user
end
	

get '/' do
	user = User.find(session[:user_id])
	
	# @shout = shout
	erb :index
end


get '/signup' do
	@user = User.last
	erb :signup
end

post '/signup' do
	pass = (0...20).map { (65 + rand(26)).chr }.join
	user = User.new(name: params[:name], handle: params[:handle], 
		password: pass )
	user.save
	session[:user_id] = user.id
	redirect '/signup'
end

get '/login' do
	redirect '/'
end
# post '/login' do

# end

# describe User do
# 	before do
# 		@user = User.new
# 		@user.name = 'Remi'
# 		@user.username = 'remicoco'
# 		@user.password = ''
# 	end
# 	it "should validate user information"
# 		expect(@user.valid?).to bet_truthy
# 	end
# end





