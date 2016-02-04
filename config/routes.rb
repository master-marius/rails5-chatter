Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # Serve websocket cable requests in-process
  root 'sessions#new'
  resources :messages, only: [:index]
  resources :sessions, only: [:new, :create]

  
  mount ActionCable.server => '/cable'
end
