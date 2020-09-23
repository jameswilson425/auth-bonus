Rails.application.routes.draw do
  devise_for :models

  namespace :api do
    post "/users" => "users#create"
  end

  root to: "home#index"

  devise_for :users, controllers: { sessions: "users/sessions" }
end
