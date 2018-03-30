Rails.application.routes.draw do
  root "homepage#index"
  
  resources :donate, only: [:index]
  
  get "about", to: "pages#show", page: "about"
  get "story", to: "pages#show", page: "story"
  get "events", to: "pages#show", page: "events"
  
  Rails.application.routes.draw do
    get "pages/:page" => "pages#show"
  end
end
