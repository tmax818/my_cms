Rails.application.routes.draw do

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root 'sections#index'

  resources :subjects do
  member do   # this adds the delete route
    get :delete
  end
end

  resources :sections do
      member do
        get :delete
      end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
