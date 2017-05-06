Rails.application.routes.draw do
  root to: 'static_pages#index'
  get 'articles/index'
  get 'articles/show'

  devise_for :users

  resources :articles, only: [:index, :show]
  resource :newsletters, only: :create

  namespace :admin do
    get 'base/index'
  end
end
