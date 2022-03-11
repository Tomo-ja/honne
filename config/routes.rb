Rails.application.routes.draw do
  root 'static_pages#home'
  get '/love', to: 'static_pages#love'
  get '/study', to: 'static_pages#study'
  get '/question', to: 'static_pages#question'
  get '/soliloquy', to: 'static_pages#soliloquy'

  get '/login', to: 'session#new'
  post '/login', to: 'session#create'
  get '/logout', to: 'session#destroy'
  
  get '/signup', to: 'users#new'

  get '/create_post', to: 'microposts#new'

  post '/comment', to: 'comments#create'


  resources :users
  resources :microposts do
    resources :comments, only:[:create]
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
