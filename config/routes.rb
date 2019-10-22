Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
 

  get '/' => 'categories#index'
  get '/signup' => 'users#new'
  post '/signup' => 'users#create'

  get '/login_page' => 'auth#signin'
  post '/login_page' => 'auth#verify'

  get '/logout', to: "auth#logout" 

  resources :users
  resources :comments, only: [:new, :create]
  resources :categories, :advices
end
