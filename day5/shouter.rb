require 'rubygems'
require 'active_record'

ActiveRecord::Base.establish_connection(
  adapter: 'sqlite3',
  database: 'shouter.sqlite'
)

class User < ActiveRecord::Base
  validates_precence_of :name, :username, :password

class Shout < ActiveRecord::Base
  validates_numericality_of :number_of_letters, greater_than: 0 
  belongs_to :User
end
	


get '/' do
	erb :index
end