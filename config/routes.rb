Rails.application.routes.draw do
  resources :posts
  get "/dsahbord" => 'dashboard#index', as: :dashboard
  get 'dashboard/nepremicnines'
  get 'dashboard/reports'
  resources :nepremicnines
  devise_for :users
  root to: 'public#main'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
