Rails.application.routes.draw do
  get 'dones/create'
  resources :tasks, only: :index do
    resources :dones, only: :create
  end
  root to: 'tasks#index'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
