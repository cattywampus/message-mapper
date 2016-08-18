Rails.application.routes.draw do
  resources :applications, only: [:show, :edit, :update, :destroy]
  resources :messages

  resources :baselines do
    resources :applications, only: [:index, :new, :create]
  end

  resources :products

  root to: "products#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
