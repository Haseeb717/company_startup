Rails.application.routes.draw do
  resources :products
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users, controllers: { :omniauth_callbacks => "omniauth_callbacks",registrations: 'registrations' }
  root 'home#index'
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
