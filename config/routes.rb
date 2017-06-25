Rails.application.routes.draw do
  devise_for :admin_users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "home#index"
  get "home/index", to: "home#index"
  resources :warehouses, only: [:index] do
    collection do
      get :order
      get :orders
      get :materials
    end
  end
end
