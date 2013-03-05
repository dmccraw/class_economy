ClassEconomy::Application.routes.draw do

  get "student/new"

  get "student/create"

  get "student/edit"

  get "student/update"

  get "student/index"

  get "student/show"

  get "student/destroy"

  resources :groups do
    resources :jobs
  end

  authenticated :user do
    root :to => 'home#index'
  end
  root :to => "home#index"

  devise_for :users
  resources :users
end