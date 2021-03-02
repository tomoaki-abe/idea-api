Rails.application.routes.draw do
  resources :fronts, only: :index do
    collection do
      get 'search'
    end
  end
  resources :categories, only: %i[index new create] do
    collection do
      get 'choice'
    end
  end
  resources :ideas, only: %i[new create]
  root to: 'fronts#index'
end
