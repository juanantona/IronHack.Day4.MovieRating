require "imdb"
require "Pry"

class IMDBRating

  def initialize
   @movies = []
   @search = []
   @rating = []
  end	
  
  def process_file
  	return @movies = IO.read("movies.txt").split("\n")
  end	

  def rating
    process_file.each do |movie|
       @rating << Imdb::Movie.new("#{Imdb::Search.new(movie).movies[0].id}").rating
    end
  end
  

end

IMDBRating.new.rating	


