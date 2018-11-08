Rails.application.routes.draw do
  post 'movies/search'
  get 'home/index'
  resources 'home'
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
