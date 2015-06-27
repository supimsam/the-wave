Rails.application.routes.draw do
  
  get '/profile/:id', to: 'users#profile', as: :users
  
  resources :posts do
	  member do
	    put "like", to: "posts#like"
	  end
end

  
  
  root 'users#home'

 
  devise_for :users
  resources :groups

  
end
