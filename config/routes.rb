Rails.application.routes.draw do
  root to: 'guardians#login'

  get 'guardians/login', to: 'guardians#login'
  resources :guardians

  get 'events', to: 'events#index'
  post '/events', to: 'events#create'

end