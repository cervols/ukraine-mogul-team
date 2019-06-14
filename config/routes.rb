Rails.application.routes.draw do
  resources :items
  resources :carts, except: [:index, :new, :edit]
  resources :positions
  devise_for :users, controllers: { registrations: "registrations" }

  root "items#index"
end
