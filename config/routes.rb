Rails.application.routes.draw do

  get('/powers', to: 'powers#index')
  get('/powers/:id', to: 'powers#show')

  get('/heroines/new', to: 'heroines#new')
  post('/heroines', to: 'heroines#create')
  get('/heroines', to: 'heroines#index')
  get('heroines/:id', to: 'heroines#show')

end
