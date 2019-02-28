# root to: "controller#action"

Rails.application.routes.draw do
  # get 'restaurants/index', to: "restaurants#index"
  # get 'restaurants/show'
  # get 'restaurants/new'
  # get 'restaurants/create'
  # get 'restaurants/edit'
  # get 'restaurants/update'
  # get 'restaurants/destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # resources :restaurants do
  #   resources :reviews, only: [:new, :create]
  # end

  # get "restaurants", to: "restaurants#index"
# resources :restaurants
Rails.application.routes.draw do
  resources :restaurants, except: [:update, :destroy] do
    resources :reviews, only: [:index, :new, :create]
  end
  resources :reviews, only: [:show, :edit, :update, :destroy]
end
end
