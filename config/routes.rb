Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      devise_for :users
      resources :shops do
        resources :leftovers
      end
      resources :users do
        resources :cart_leftovers
        resources :carts
      end
    end
  end
end
