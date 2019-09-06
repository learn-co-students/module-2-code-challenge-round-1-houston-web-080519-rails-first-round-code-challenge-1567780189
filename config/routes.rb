Rails.application.routes.draw do

  # get('/powers', to: 'powers#index')

  # get('/heroines', to: 'heroines#index')

  resources(:powers)
  resources(:heroines)


end
