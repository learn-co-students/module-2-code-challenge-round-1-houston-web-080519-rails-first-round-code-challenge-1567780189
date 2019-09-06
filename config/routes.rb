Rails.application.routes.draw do

  get('/powers', to: 'powers#index')

  get('/powers/:id', to: 'powers#show')

  get('/heroines', to: 'heroines#index')

  get('/heroines/:id', to: 'heroines#show')

  post('/heroines', to: 'heroines#create')

  get('/heroines/new', to: 'heroines#new')
end
