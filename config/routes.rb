Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root to: "lists#index"

  resources :lists
  resources :widgets

  get '/turbo-drive', to: 'turbo_drive#turbo_drive'
  get '/link', to: 'turbo_drive#link'
  post '/create', to: 'turbo_drive#create'

  get 'turbo-frames', to: 'turbo_frames#turbo_frames'
  get 'link-not-in-a-frame', to: 'turbo_frames#link_not_in_a_frame'
  get 'link-in-a-frame', to: 'turbo_frames#link_in_a_frame'
  get 'link-targeting-a-different-frame', to: 'turbo_frames#link_targeting_a_different_frame'
  post 'increment-count', to: 'turbo_frames#increment_count'
  get '/eager-loaded-frame', to: 'turbo_frames#eager_loaded_frame'
end
