Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'welcome#index'

  resources :cocktails, only: [:index]
  resources :drinks, only: [:index]
  resources :users, only: [:new, :create]
  post '/users/new', to: 'welcome#index'
  get '/login', to: 'users#login_form'
  post '/login', to: 'users#login'
end
