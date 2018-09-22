Rails.application.routes.draw do
  devise_for :models
  devise_for :users, path: '', path_names: { sign_in: 'login', sign_out: 'logout' }
  devise_for :views
  resources :users
  resources :products
  get 'simple_pages/about'
  get 'simple_pages/contact'
  get 'simple_pages/index'
  get 'simple_pages/admin'
  post 'simple_pages/thank_you'
  root 'simple_pages#landing_page'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :orders, only: [:index, :show, :create, :destroy]

end
