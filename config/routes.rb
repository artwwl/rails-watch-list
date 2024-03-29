Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root "pages#index"
  resources :lists, only: [:index, :show, :create, :new] do
    resources :bookmarks, only: [:new, :create]
    resources :reviews, only: :create
  end

  resources :bookmarks, only: :destroy
end
