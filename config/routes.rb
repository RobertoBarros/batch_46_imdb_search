Rails.application.routes.draw do

  resources :movies, only: [:index]
  resources :searches, only: [:index]

  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
