Rails.application.routes.draw do
  get 'ideas/index'
  get 'ideas/show'
  resources :categories, only: :index
end
