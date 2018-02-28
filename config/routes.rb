Rails.application.routes.draw do
  root "homepage#index"

  resources :events, path: "events", except: [:show]
  get "get-involved", to: "pages#show", page: "get_involved"

  Rails.application.routes.draw do
   get "pages/:page" => "pages#show"
  end
end
