Rails.application.routes.draw do

  resources :powers, :heroines

  # get('/powers', to: 'powers#index')

  # get('/heroines', to: 'heroines#index')

end
