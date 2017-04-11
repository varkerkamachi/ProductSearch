Rails.application.routes.draw do
  root 'product_search#index'

  resources :product_search, only: [:index]

  namespace :admin do
    resources :search_results, path: 'cache'
  end

end
