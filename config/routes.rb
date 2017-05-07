Rails.application.routes.draw do
  root to: 'static_pages#index'
  get 'articles/index'
  get 'articles/show'

  resources :articles, only: [:index, :show]
  resource :newsletters, only: :create

  devise_for :users

  namespace :admin do
    get 'base/index'
    resources :articles
  end
end
