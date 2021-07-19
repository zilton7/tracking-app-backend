Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do  
      resources :measurements, only: [:index, :show]
    end
  end
end
