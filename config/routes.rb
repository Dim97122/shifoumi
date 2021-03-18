Rails.application.routes.draw do

  post '/play', to: 'games#create'

  get 'games', to: 'games#index'

end
