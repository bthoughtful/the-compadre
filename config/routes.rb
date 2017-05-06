Rails.application.routes.draw do
  get 'articles/index'

  get 'articles/show'

  get 'index/show'

  root to: 'static_pages#index'
  devise_for :users
  resources :articles, only: [:index, :show]
  resource :newsletters, only: :create
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
