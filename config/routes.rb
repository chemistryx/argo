Rails.application.routes.draw do
  devise_for :users
  resources :activities do
    resources :comments
  end

  root to: 'home#index'
  get '/about', to: 'about#index'
end
