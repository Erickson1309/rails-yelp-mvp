Rails.application.routes.draw do
  # get 'reviews/index'
  # get 'reviews/show'
  # get 'reviews/new'
  # get 'reviews/create'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :restaurants

  resources :reviews, only: [ :new, :create ]


  root to: "restaurants#index"
end
