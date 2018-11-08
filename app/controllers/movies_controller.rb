class MoviesController < ApplicationController
  def search
    puts "coucou la clé est :"
   puts @key = ENV['DB_MOVIES_KEY']
   

  end
end
