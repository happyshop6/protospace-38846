Rails.application.routes.draw do
  devise_for :users
  root to: "prototypes#index"

  resources :users, only: [:new, :edit, :update, :show]
  resources :prototypes, only: [:index,:create,:new,:show,:edit,:update,:destroy] do 
    resources :comments, only: :create
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
