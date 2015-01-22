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
require 'sinatra/reloader'
require 'pp'

set :port, 3002


class Activists
    attr_accessor :activists, :users
    def initialize
    @activists = []
    @users ||= 0
    end

    def add_activist(activist)
        @users += 1
        @activists << activist
    end
end

subscriber = Activists.new

get('/') do  
   @activists = subscriber.activists
   @number_of_users = subscriber.users
    erb(:sl11)
end

post('/signup') do
    subscriber.add_activist(params[:name])
    redirect('/')
end








