Rails.application.routes.draw do
  devise_for :admins
  devise_for :users

  get "/users/sign_out", to: "home#destroy"

  resources :posts

  root 'home#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
