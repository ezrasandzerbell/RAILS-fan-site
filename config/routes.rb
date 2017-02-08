Rails.application.routes.draw do
  resources :users do
    resources :works
  end

  resources :works do
    resources :reviews
  end

end
