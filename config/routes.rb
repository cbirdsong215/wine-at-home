Rails.application.routes.draw do
  root 'tastings#index'
  get "/pages/:page" => "pages#about"


  devise_for :users
  resources :users
  resources :tastings do
    resources :wines
    resources :pairings
  end
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
