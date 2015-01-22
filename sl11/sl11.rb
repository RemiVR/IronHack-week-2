# - In “/“, you can see the list of users (showing their name) 
#that have signed up and the number of users.
# - Also in “/“, there’s a form (pointing to “/signup”) with 
#which you can sign up yourself. After you sign up, your user 
#id (and your
# id only) is saved in session, and you can see it in the top 
#(hint: use an internal data structure were you can save ids 
    #with their corresponding names and, important: ids should 
    #be incremental and not repeat).


require 'sinatra'
require 'sinatra/reloader' if development?
require 'pp'

set :port, 3002

enable :sessions

users = {}
user_id ||= 0

get '/' do
    user_id += 1
    @user_id = session[:user_id]
    @user_name = users[@user_id]
    @users = users
    erb :sl11
end

get '/signup' do
    erb :signup
end

post '/signup' do
    session[:user_id] = user_id
    users[user_id] = params[:name]
    redirect('/')
end









