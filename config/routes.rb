Rails.application.routes.draw do
  root 'users#index'
  resources :users

  get 'users/new'
  get 'users/show'

  get 'events/index'

  get '/signup',  to: 'users#new'

  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'

  get	 '/logout',  to: 'sessions#destroy'
  delete '/logout',  to: 'sessions#destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
