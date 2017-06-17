Rails.application.routes.draw do
  get 'toppages/index'

  root to: 'toppages#index'
  get 'signup', to: 'users#show'
  resources :users, only: [:index, :show, :new, :create]

  get 'users/index'

  get 'users/show'

  get 'users/new'

  get 'users/create'


  root to: 'tasks#index'
  resources :tasks
end
