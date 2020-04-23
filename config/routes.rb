Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      resource :users, only: [:create, :show]
      post "/login", to: "sessions#new"
      post "/logout", to: "sessions#destroy"
    end
  end
end