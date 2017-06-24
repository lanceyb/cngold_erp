Rails.application.routes.draw do
  devise_for :admin_users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "warehouses#index"
  resources :warehouses, only: [:index] do
    collection do
      get :order
      get :orders
    end
  end
end
