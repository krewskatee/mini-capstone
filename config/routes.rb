Rails.application.routes.draw do
  get '/' => 'weapons#index'
  get '/weapons' => 'weapons#index'
  get '/weapons/new' => 'weapons#new'
  post '/weapons/create' => 'weapons#create'

  get '/weapons/random' => 'weapons#random'

  get '/weapons/:id' => 'weapons#show'
  get '/weapons/:id/edit' => 'weapons#edit'


  patch '/weapons/:id' => 'weapons#update'
  delete '/weapons/:id' => 'weapons#destroy'

  get '/signup' => 'users#new'
  post '/users' => 'users#create'

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'

  post '/orders' => 'orders#create'
  get '/orders/:id' => 'orders#show'

  get '/checkout' => 'carted_weapons#index'
  post '/carted_weapons' => 'carted_weapons#create'
  delete '/carted_weapons/:id' => 'carted_weapons#destroy'

end
