Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Health status for uptime monitoring
  get "up" => "rails/health#show", as: :rails_health_check

  # Workout resource routes
  resources :workouts

  # Define the root path
  root "workouts#index" # Adjust if you want another controller as the home page
end
