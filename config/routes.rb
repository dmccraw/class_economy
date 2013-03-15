ClassEconomy::Application.routes.draw do


  resources :transactions


  resources :groups do
    resources :jobs
    resources :students
    resources :stores
  end

  authenticated :user do
    root :to => 'home#index'
  end
  root :to => "home#index"

  devise_for :users
  resources :users
end