Rails.application.routes.draw do
  get 'hints/index'
  get 'hints/show'
  devise_for :users

  root to: "users#show"
  resources :users, shallow: true, only: [:show] do
    resources :hints, only: [:index, :show]
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
