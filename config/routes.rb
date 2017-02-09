Rails.application.routes.draw do
  root :to => 'users#index'
  resources :users do
    resources :works
  end

  resources :works do
    resources :reviews
  end

end
