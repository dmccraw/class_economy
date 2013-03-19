ClassEconomy::Application.routes.draw do

  resources :groups do
    resources :jobs
    resources :students
    resources :stores
    resources :transactions
  end

  authenticated :user do
    root :to => 'home#index'
  end

  match "/switch_user" => "home#switch_user"
  root :to => "home#index"

  devise_for :users
  resources :users
end