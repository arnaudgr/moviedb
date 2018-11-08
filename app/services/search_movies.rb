require 'uri'
require 'net/http'

class SearchMovies
  def search_movies

    @api_key = ENV['DB_MOVIES_KEY']	
  
    puts params["movie_request"]
    @request = "https://api.themoviedb.org/?api_key=#{@api_key}&query=#{@movie_request}"
    puts @request
  	
  end

end