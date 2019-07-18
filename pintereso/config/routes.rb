Rails.application.routes.draw do
  get 'pages/about'
  resources :pins
  devise_for :users, controllers: {
    registration: 'registrations'
  }

  root 'pins#index'
end
