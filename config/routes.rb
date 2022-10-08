Rails.application.routes.draw do
  root "home#index"
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # devise_scope :user do
  #   # Redirests signing out users back to sign-in
  #   get "/users", to: "devise/sessions#new"
  # end
end
