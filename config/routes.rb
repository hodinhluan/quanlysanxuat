Rails.application.routes.draw do
  resources :daily_reports
  resources :mistakes
  resources :groups
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  root :to => "daily_reports#index"
  devise_for :users
end
