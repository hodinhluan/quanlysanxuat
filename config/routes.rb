Rails.application.routes.draw do
  resources :daily_reports
  resources :mistakes
  resources :groups
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  root :to => "rails_admin/main#dashboard"
  devise_for :users
end
