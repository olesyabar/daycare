Rails.application.routes.draw do
  root to: 'guardians#index'

  resources :guardians
  resources :children
end
