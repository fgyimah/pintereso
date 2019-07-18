Rails.application.routes.draw do
  resources :pins
  devise_for :users, controllers: {
    registration: 'registrations'
  }

  root 'pins#index'
end
