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
	@user = User.find_by(session[:user_id])
	@user = User.last
	@errors = session[:errors]
	erb :index
end


get '/signup' do
	
	erb :signup
	# redirect '/'
end

post '/signup' do
	pass = (0...20).map { (65 + rand(26)).chr }.join
	user = User.new(name: params[:name], handle: params[:handle], 
		password: pass )
	user.save
	session[:user_id] = user.id
	redirect '/'
end

get '/login' do
	redirect '/'
end

post "/login" do
    if User.find_by(handle: params[:handle])
    	user = User.find_by(handle: params[:handle])
    	if user.password == params[:password]
    		redirect_to("/")
    	else
    		session[:errors] = "Wrong fucking password. Dumb ASS"
    		redirect_to("/")
    	end
    else
    	redirect_to("/")
    end
end

# describe User do
# 	before do
# 		@user = User.new
# 		@user.name = :name
# 		@user.handle = :handle
# 		@user.password = :password
# 	end
# 	it "should validate user information" do
# 		expect(@user.valid?).to be_truthy
# 	end
# end





