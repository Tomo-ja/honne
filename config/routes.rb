Rails.application.routes.draw do
  root 'static_pages#home'

  get '/login', to: 'session#new'
  post '/login', to: 'session#create'
  get '/logout', to: 'session#destroy'
  
  get '/signup', to: 'users#new'
  resources :users
  resources :microposts, only:[:show, :new, :edit, :create, :destroy, :update]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
