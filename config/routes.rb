Rails.application.routes.draw do
  resources :values
  resources :images
  resources :themes
  resources :users
  resources :sessions, only: [:new, :create, :destroy]
  root 'main#index'

  namespace :api, defaults: { format: :json } do
      
      match 'next_image',       to: 'api#next_image',   via: 'get'
      match 'prev_image',       to: 'api#prev_image',   via: 'get'
      match 'save_value',       to: 'api#save_value',   via: :get

  end

  # get :next_image, controller:"api/api"
  # get :prev_image, controller:"api/api"
  # match 'next_image',       to: 'api/api#next_image',   via: 'get'
  # match 'prev_image',       to: 'api/api#prev_image',   via: 'get'
    # match 'save_value',       to: 'api/api#save_value',   via: :get

  match 'index', to: 'main#index',           via: 'get'
  match 'about', to: 'main#about',           via: 'get'
  match 'help', to: 'main#help',            via: 'get'
  match 'contacts', to: 'main#contacts',        via: 'get'

  match 'work',     to: 'work#index',           via: 'get'
  match 'choose_theme', to: 'work#choose_theme', via: 'get'
  match 'display_theme', to: 'work#display_theme', via: 'post'

  match 'signup', to: 'users#new', via: 'get'
  match 'signin', to: 'sessions#new', via: 'get'
  match 'signout', to: 'sessions#destroy', via: 'delete'

  match 'results_list', to: 'work#results_list', via: 'get'
  match 'save_value', to: 'api/api#save_value',   via: 'get'

  # match 'sessions', to: 'sessions#new', via: 'get'

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
