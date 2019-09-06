Rails.application.routes.draw do

  get('/powers', to: 'powers#index')

  get('/heroines', to: 'heroines#index')

  get('/heroines/new', to: 'heroines#new')

  post('/heroines', to: 'heroines#index')

 

end
