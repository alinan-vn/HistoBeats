Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :songs, only: [:index, :show, :new, :create, :edit, :update]
  delete '/songs/:id' => 'songs#destroy', as: 'delete_song'

  resources :artists, only: [:index, :show, :new, :create, :edit, :update]

  resources :genres
  resources :users, only: [:index, :show, :new, :create, :edit, :update]

  resources :reviews, only: [:index, :show, :new, :create, :edit, :update]
  delete '/reviews/:id' => 'reviews#destroy', as: 'delete_review'

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  post '/logout' => 'sessions#destroy'

end
