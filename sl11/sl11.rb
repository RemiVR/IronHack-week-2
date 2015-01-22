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
require "sinatra/reloader" if development?
require 'pp'

set :port, 3000


users ||= 0



class Activists
    attr_accessor :activists
    def initialize
    @activists =[]
    end
    def add_user(activist)
        visits += 1
        @users = users
        @activists << activist
    end
end

subscriber = Activists.new

get('/') do  
   @activists = subscriber
    erb(:sl11)
end

post('/') do
    activist << params[:name]
    subscriber.add_user(activist)
    redirect('/')
end








