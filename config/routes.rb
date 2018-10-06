Rails.application.routes.draw do
  resources :errors
  resources :daily_reports
  resources :groups
  devise_for :users
end
