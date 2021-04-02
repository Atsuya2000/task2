Rails.application.routes.draw do
  devise_for :users
  root 'homes#top'
  get '/homes/about', to: 'homes#about'
  resources :users,only: [:show,:index,:edit,:update]
  resources :books
  devise_for :users

end