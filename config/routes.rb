Rails.application.routes.draw do
  get 'topics/new'

  get 'sessions/new'

  get 'users/new'

    root 'pages#index'
    get 'pages/index'
    
    root 'pages#index'
    get 'pages/help'
    
    root 'pages#index'
    get 'pages/link'
    
    resources :users
    
    get  '/login', to:'sessions#new'
    post   '/login',   to: 'sessions#create'
    delete '/logout',  to: 'sessions#destroy'
    
    resources :users
    resources :topics
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    
end
