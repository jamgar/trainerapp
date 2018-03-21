Rails.application.routes.draw do

  resources :workouts
  devise_for :users
  get 'pages/about'
  get 'pages/contact'
  get 'pages/dashboard'
  root 'pages#home'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
