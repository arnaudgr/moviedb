class MoviesController < ApplicationController
  def search
    @search_movie = SearchMovies.new
    @search_movie.search_movies

  end

 
end
