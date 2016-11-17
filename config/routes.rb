Rails.application.routes.draw do
  get 'sessions/new'

  get 'users/new'

  root 'static_pages#home'

 
  get '/audio', to: 'songs#showAudio'
  get  '/about',  to: 'static_pages#about'
  get  '/help',   to: 'static_pages#help' 
  get  '/signup',  to: 'users#new'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  post '/add', to: 'songs#add'
  get '/search', to: 'search#showsearch'
  resources :users
  resources :audios
  
end

