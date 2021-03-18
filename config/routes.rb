Rails.application.routes.draw do

  post '/play', to: 'games#create'

end
