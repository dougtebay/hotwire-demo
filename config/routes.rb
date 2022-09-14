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
  get(
    'link-in-frame-targeting-a-different-frame',
    to: 'turbo_frames#link_in_frame_targeting_a_different_frame',
  )
  get 'link-not-in-frame-targeting-a-frame', to: 'turbo_frames#link_not_in_frame_targeting_a_frame'
  post 'increment-count', to: 'turbo_frames#increment_count'
  get '/eager-loaded-frame', to: 'turbo_frames#eager_loaded_frame'

  get 'turbo-streams', to: 'turbo_streams#turbo_streams'
  post 'target_action', to: 'turbo_streams#target_action'
  post 'multiple_targets', to: 'turbo_streams#multiple_targets'
  post(
    'multiple_targets_using_query_selectors',
    to: 'turbo_streams#multiple_targets_using_query_selectors',
  )
end
