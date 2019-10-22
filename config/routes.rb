Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
 
  # get '/' => 'categories#index'
  # get '/login' => 'sessions#new'
  # post '/login' => 'sessions#create'
  # post '/login' => 'sessions#destroy'
  get '/' => 'categories#index'
  resources :users, only: [:show]
  resources :comments, only: [:new, :create]
  resources :categories, :advices
end
