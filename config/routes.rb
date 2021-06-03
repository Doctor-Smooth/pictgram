Rails.application.routes.draw do
  root 'pages#index'
  get 'pages/index'
  get 'pages/help'
  get 'pages/link'
 
  resources :users
  resources :topics do
    resources :favorites, only: [:create, :destroy]
  end
  
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'

  get 'favorites/index'
  post '/favorites', to: 'favorites#create'
  delete '/favorites', to: 'favorites#destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    
end
