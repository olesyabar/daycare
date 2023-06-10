Rails.application.routes.draw do
  root to: 'guardians#index'

  resources :guardians

  get 'events', to: 'events#index'
  post '/events', to: 'events#create'

end