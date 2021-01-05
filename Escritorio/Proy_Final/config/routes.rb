Rails.application.routes.draw do
  devise_for :users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resources :invoice_clients
  resources :invoice_suppliers
  resources :rols
  resources :add_to_invoice_clients
  resources :add_to_invoice_suppliers
  resources :users
  resources :roles
  resources :clients
  resources :suppliers
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  #unauthenticated :user do
   # root 'home#index'
  #end
  
# authenticated :user do
 #   root "invoice_clients#new"
  #end
 
  get 'home/index'
  get 'home/dashboard'

end
