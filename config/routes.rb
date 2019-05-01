Rails.application.routes.draw do
  get 'store/index'
  devise_for :users, controllers: { registrations: "registrations" }

  root "store#index"
end
