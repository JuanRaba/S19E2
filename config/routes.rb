Rails.application.routes.draw do
  get 'dones/create'
  resources :tasks, only: [:index, :show] do
    resources :dones, only: [:create, :destroy]
  end
  resources :dones, only: :index
  root to: 'tasks#index'
  devise_for :users, controllers: {
    registrations: 'users/registrations'
  }

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
