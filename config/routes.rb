Rails.application.routes.draw do
  get 'sessions/new'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get '/', to: "application#homepage", as: "homepage"
  get "/login", to: "sessions#new"
  post "/login", to: "sessions#create"
  get "/logout", to: "sessions#logout"
  get "/analytics", to: "application#analytics", as: "analytics"
  resources :users, only: [:index, :show, :edit, :update, :new, :create, :destroy]
  resources :posts, only: [:index, :show, :edit, :update, :new, :create, :destroy]
  resources :projects, only: [:index, :show, :edit, :update, :new, :create, :destroy]
  resources :post_favorites, only: [:create, :destroy]
  resources :project_favorites, only: [:create, :destroy]
end
