Rails.application.routes.draw do

  devise_for :users
  root to: 'bugs#index'
  resources :bugs, only: [:index, :new, :show, :create, :edit, :update]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
