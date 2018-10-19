Rails.application.routes.draw do
  devise_for :models
  devise_for :users, path: '', path_names: { sign_in: 'login', sign_out: 'logout' }, controllers: { registrations: "user_registrations" }
  resources :users
  resources :products do
    resources :comments
  end
  resources :payments, only: [:new, :create]
  get 'simple_pages/about'
  get 'simple_pages/contact'
  get 'simple_pages/index'
  get 'simple_pages/404'
  post 'simple_pages/thank_you'
  root 'simple_pages#landing_page'
  post 'payments/create'
  #action cable process call
  mount ActionCable.server => '/cable'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :orders, only: [:index, :show, :create, :destroy]


end
