Rails.application.routes.draw do
  root 'tastings#index'

  get "/pages", to: "pages#about", as: "about"


  devise_for :users
  resources :users
  namespace :api do
    namespace :v1 do
      resources :users
    end
  end


  resources :tastings do
    resources :wines
    resources :pairings
  end
  namespace :api do
    namespace :v1 do
      resources :posts
    end
  end
  namespace :api do
    namespace :v1 do
      resources :comments
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
