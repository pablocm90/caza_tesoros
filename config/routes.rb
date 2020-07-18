Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users

  root to: "users#show"
  resources :users, shallow: true, only: [:show] do
    resources :hints, only: [:index, :show] do
      member do 
        post :answer
      end
    end
  end
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
