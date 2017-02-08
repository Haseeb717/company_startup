Rails.application.routes.draw do
  resources :products do
  	member do 
	  	get 'back'
	  	get 'report'
	  end
  end 
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users, controllers: { :omniauth_callbacks => "omniauth_callbacks",registrations: 'registrations' }
  root 'home#index'

  get 'my_projects' =>'products#my_products'
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
