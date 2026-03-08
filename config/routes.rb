Rails.application.routes.draw do
  resources :passwords, param: :token
  resources :registrations, only: [:new, :create]
  resource :session, only: [:new, :create, :destroy]

  get "up" => "rails/health#show", as: :rails_health_check

  root "chats#index"
end
