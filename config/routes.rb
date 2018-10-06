Rails.application.routes.draw do
  resources :daily_reports
  resources :errors
  resources :groups
  devise_for :users
end
