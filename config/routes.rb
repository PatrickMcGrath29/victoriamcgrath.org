Rails.application.routes.draw do
  root "homepage#index"
  
  resources :donate, only: [:index]
  
  get "about", to: "pages#show", page: "about"
  get "story", to: "pages#show", page: "story"
  get "projects", to: "pages#show", page: "projects"
  
  Rails.application.routes.draw do
    get "pages/:page" => "pages#show"
  end
end
