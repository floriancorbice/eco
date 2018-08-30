Rails.application.routes.draw do
  get 'dashboard/index'
  resources :line_items
  resources :carts
  root 'catalog#index'
  resources :products
  devise_for :users
  resources :charges
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
