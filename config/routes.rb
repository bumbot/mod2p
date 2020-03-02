Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get '/', to: "application#homepage"
  resources :users, only: [:index, :show, :edit, :update, :new, :create]
  resources :posts, only: [:index, :show, :edit, :update, :new, :create]
  resources :projects, only: [:index, :show, :edit, :update, :new, :create]
end
