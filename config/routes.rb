Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # Serve websocket cable requests in-process
  root 'sessions#new'
  #root 'dashboard#index'

  get   '/login', to: 'dashboard#login', as: 'login'
  
  resources :messages, only: [:index]
  resources :sessions, only: [:new, :create]
  resources :dashboard, only: [:index]
  
  mount ActionCable.server => '/cable'
end
