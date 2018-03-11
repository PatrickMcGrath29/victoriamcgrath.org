Rails.application.routes.draw do
  root "homepage#index"

  resources :events, path: "events", except: [:show]
  resources :donate, only: [:index]

  get "about", to: "pages#show", page: "about"
  get "story", to: "pages#show", page: "story"

  Rails.application.routes.draw do
   get "pages/:page" => "pages#show"
  end
end
