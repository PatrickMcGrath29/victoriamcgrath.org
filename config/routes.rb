Rails.application.routes.draw do
  devise_for :users
  root "homepage#index"

  resources :donate, only: [:index]
  resources :events

  get "about", to: "pages#show", page: "about"
  get "story", to: "pages#show", page: "story"
  get "projects", to: "pages#show", page: "projects"
end
