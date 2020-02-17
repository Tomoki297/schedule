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
  get 'about' => "home#about"
  get 'schedule' => "home#schedule"
  get 'month' => "home#month"
  get 'day1' => "home#day1"
  get 'day2' => "home#day2"
  get 'day3' => "home#day3"
  get 'day4' => "home#day4"
  get 'day5' => "home#day5"
  get 'day6' => "home#day6"
  get 'day7' => "home#day7"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
