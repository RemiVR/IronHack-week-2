require 'imdb'
require 'pp'
  dexter_movie = Imdb::Search.new('Breaking Bad').movies.first
  serie = Imdb::Serie.new(dexter_movie.id)
#serie = Imdb::Search.new('californication')


pp serie.title

pp serie.rating

episodes = serie.seasons.size

pp serie.season(1).episodes.size

pp serie.season(1).episode(2).title

# def dexter
# 	dexter_movie = Imdb::Search.new('dexter').movies.first
# 	dexter_serie = Imdb::Serie.new(dexter_movie.title)
# end

# pp dexter

#Hash = {"title" => "Breaking bad", "ratings" => 9.5, "seasons" => 5, "episodes" => 23}