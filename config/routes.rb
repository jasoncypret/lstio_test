Lstio::Application.routes.draw do

  root :to => "users#new"

  get "logout" => "sessions#destroy", :as => "logout"
  get "login" => "sessions#new", :as => "login"
  get "signup" => "users#new", :as => "signup"
  
  resources :users
  resources :sessions
  resources :articles
  resources :items
  resources :lists
  
end
