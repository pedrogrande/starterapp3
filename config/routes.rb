Rails.application.routes.draw do
  get 'my_cart', to: 'carts#show'
  resources :carts do
    collection do
      get :add_to
    end
    member do
      get :remove_from
    end
  end
  resources :products
  resources :seller_profiles
  resources :enquiries
  devise_for :users, controllers: { registrations: "registrations" }
  root 'pages#home'
  get 'contact', to: 'pages#contact'
  get 'about', to: 'pages#about'
  get 'privacy', to: 'pages#privacy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
