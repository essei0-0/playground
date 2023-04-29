Rails.application.routes.draw do
  root 'homes#index'
  resources :users do
    collection do
      get 'search_address'
    end
  end
end
