Rails.application.routes.draw do
  
  
  namespace :api do
    namespace :v1 do
      resources :users, only: [:create, :update, :delete]
      resources :regions, only: [:index, :show]
      resources :locations
    end
  end
end
