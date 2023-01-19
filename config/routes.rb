Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index" 
  # resources :songs

  #index
  get 'songs', to: 'songs#index', as: 'songs'
  #new/create
  get 'songs/new', to: 'songs#new', as: 'new_song'
  post 'songs', to: 'songs#create'
  #show
  get 'songs/:id', to: 'songs#show', as: 'song'
  #edit/update
  get 'songs/:id/edit', to: 'songs#edit', as: 'edit_song'
  put 'songs/:id', to: 'songs#update'
  #destroy
  delete 'songs/:id', to: 'song#destroy'
end
