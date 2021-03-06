Rails.application.routes.draw do
  
  get 'pages/gyms'

  resources :gyms do
  member do
    post :vote_up
  end

  member do
    post :vote_down
  end
  
  member do
    post :add_favorite
  end
  
  member do
    post :remove_favorite
  end
  end
  # index page / root url
  root 'pages#home', as: 'home'
  
  get 'pages/home'
  
  get 'pages/search'

  get 'pages/favorites'

  get 'pages/about'
  
  get 'pages/gyms'
  
  get 'auth/:provider/callback', to: 'sessions#create'
  
  get 'logout', to: 'sessions#destroy'

  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
