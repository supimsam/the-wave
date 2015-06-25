Rails.application.routes.draw do
  
  get '/profile/:id', to: 'users#profile', as: :users
  
  resources :posts

  
  
  root 'users#home'

 
  devise_for :users
  resources :groups

  
end
