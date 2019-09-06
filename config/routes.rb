Rails.application.routes.draw do

  resources :powers, :heroines, :search



  # get('/powers', to: 'powers#index')

  # get('/heroines', to: 'heroines#index')

end
