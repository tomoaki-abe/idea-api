Rails.application.routes.draw do
  resources :fronts, only: :index
  resources :categories, only: [:index, :show, :new, :create]
  root to: 'fronts#index'
end
