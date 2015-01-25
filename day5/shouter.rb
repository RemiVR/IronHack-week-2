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
  validates :message, presence: true, length: { minimum: 1, maximum: 200}
  validates :created_at, presence: true
  validates :likes, presence: true
  belongs_to :user
end
	

get '/' do
	@shouts = Shout.all.order('created_at desc').limit(10)
	erb :index
end


get '/signup' do

	erb :signup
	# redirect '/'
end

post '/signup' do
	pass = (0...20).map { (65 + rand(26)).chr }.join
	user = User.new(name: params[:name], handle: params[:handle],password: pass)
	user.save
	session[:user_id] = user.id
	redirect('/login')
end

get '/login' do
	@error = session[:error]
	erb :login
end

post "/login" do
    if User.find_by(handle: params[:handle])
    	user = User.find_by(handle: params[:handle])
    	if user.password == params[:password]
    		# session[:logged_in] = "Login successful"
    		# @logged_in = session[:logged_in]
    		redirect('/')
    	else
    		session[:error] = "Wrong password"
    		redirect('/login')
    	end
    else
    	redirect('/login')
    end
end

post '/shout' do
	shout = Shout.new(message: params[:message], created_at: Time.new, likes: 0)
	shout.save

	redirect('/')
end	
post '/likes' do
	likes = Shout.find(session[:shout_id])

	likes.save
end


# describe User do
# 	before do
# 		@user = User.new
# 		@user.name = "remi"
# 		@user.handle = :handle
# 		@user.password = "KSRJHQHKGMPRCSAJYYVB"
# 	end
# 	it "should validate user information" do
# 		expect(@user.valid?).to be_truthy
# 	end
# 	it "should validate handle" do
# 		expect(@user.handle.valid?).to be_truthy
# 	end
# end





