Rails.application.routes.draw do

  root 'sections#index'
  
  resources :sections do
      member do
        get :delete
      end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
