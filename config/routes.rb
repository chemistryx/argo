Rails.application.routes.draw do
  authenticate :user, lambda { |u| u.admin? } do
      begin
        mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
      rescue
        redirect_to new_user_session_path
      end
  end
  devise_for :users
  resources :activities do
    resources :comments
  end

  root to: 'home#index'
  get '/about', to: 'about#index'
end
