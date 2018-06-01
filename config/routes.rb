Rails.application.routes.draw do
 resources :users
 root to: 'controller_s#home'
 get '/show', to: 'users#show'
 get 'auth/:provider/callback', to: 'sessions#create'
 get 'signout', to: 'sessions#destroy', as: 'signout'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
end
