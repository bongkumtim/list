Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users, controllers: {
        sessions: 'users/sessions'
      }


  resources :businesses
  root "businesses#index"

  get "/account" => "businesses#account"
  get "/merchant" => "businesses#merchant"
end
