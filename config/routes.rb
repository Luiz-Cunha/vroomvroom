Rails.application.routes.draw do
  get 'wishlists/create'
  get 'wishlists/destroy'
  root to: "pages#home"

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  devise_for :users

  resources :motorcycles, only: [:edit, :update, :new, :create, :index, :show] do
    resources :rent_motorcycles, only: [:create, :index]
  end

  resources :rent_motorcycles, only: [] do
    member do
      patch :approve
      patch :reject
    end
  end

  resources :motorcycles do
    resource :wishlist, only: [:create, :destroy], controller: 'wishlists'
  end
end
