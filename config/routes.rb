Rails.application.routes.draw do
#   devise_for :users
#   get 'prototypes/index'
#   root to: "prototypes#index"
#   resources :prototypes do
#     resources :comments, only: :create
#   end
#   resources :prototypes, only: [:new, :create, :index, :show, :edit, :update, :destroy]
# end

devise_for :users
  get 'prototypes/index'
  root to: "prototypes#index"
  resources :prototypes, only: [:new, :create, :index, :show, :edit, :update, :destroy] do
    resources :comments, only: :create
  end

  resources :users, only: :show
  
end
