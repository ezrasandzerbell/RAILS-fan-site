Rails.application.routes.draw do
  resources :users do
    resources :works
  end

end
