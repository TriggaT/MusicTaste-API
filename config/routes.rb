Rails.application.routes.draw do
  resource :users, only: [:create]
   post "/login", to: "auth#login"
   get "/auto_login", to: "auth#auto_login"
  resources :reviews
  resources :playlists
  resources :songs
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
