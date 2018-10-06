Rails.application.routes.draw do
  resources :daily_reports
  resources :errors
  resources :groups
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
