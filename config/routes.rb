Rails.application.routes.draw do
  
  namespace :api do
    namespace :v1 do
      resources :users, except: [:index]
      resources :regions, only: [:index, :show]
      resources :locations
      resources :food_sources
    end
  end
end
