require "imdb"
require "Pry"

class IMDBSearch


  def search
    IO.write("new.txt", Imdb::Search.new("Ghostbusters").movies)
    puts movie = Imdb::Movie.new("0087332").rating
    
    binding.pry
  end

end

IMDBSearch.new.search	


