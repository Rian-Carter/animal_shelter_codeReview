Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :animals
    end
  end
  namespace :api do
    namespace :v2 do
      resources :animals
    end
  end
end
