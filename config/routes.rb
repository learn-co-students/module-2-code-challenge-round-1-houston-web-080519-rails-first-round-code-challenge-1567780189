Rails.application.routes.draw do
  resources :powers, only: [:index]
  resources :heroines, only: [:index]  
  get "heroines/show/:id", to: "heroines#show"
  get "heroines/new", to: "heroines#new"
  post "heroines/new", to: "heroines#create"
  get "powers/:id", to: "powers#show"
end
