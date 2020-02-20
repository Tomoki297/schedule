Rails.application.routes.draw do
  resources :tasks do
    member do
      delete 'real_destroy'
    end

    collection do
      get 'complete'
    end
  end

  get "tasks:id" => "tasks#show"
  resources :events
  get "events:id" => "events#show"
  devise_for :admin_users, ActiveAdmin::Devise.config
  # devise_for :admins, path: 'admins', controllers: { sessions: "admins/sessions" }
  ActiveAdmin.routes(self)
  root 'home#top'
  get 'top' => "home#top"
  get 'month' => "home#month"

  get 'login' => "admin_users#login_form"
  post 'login' => "admin_users#login"
  post "logout" => "admin_users#logout"

  post 'create' => "admin_users#create"
  get 'signup' => "admin_users#new"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
