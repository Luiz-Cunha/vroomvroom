Rails.application.routes.draw do
  get 'rent_motorcycles/index'
  get 'rent_motorcycles/show'
  get 'rent_motorcycles/new'
  get 'rent_motorcycles/create'
  get 'rent_motorcycles/edit'
  get 'rent_motorcycles/update'
  get 'rent_motorcycles/destroy'
  get 'motorcycles/index'
  get 'motorcycles/show'
  get 'motorcycles/new'
  get 'motorcycles/create'
  get 'motorcycles/edit'
  get 'motorcycles/update'
  get 'motorcycles/destroy'
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
end
