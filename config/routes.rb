Rails.application.routes.draw do
  root 'schedules#index'
  post "schedules/new",to:"schedules#create"
  delete "schedules/:id",to:"schedules#destroy"
  resources :schedules
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
