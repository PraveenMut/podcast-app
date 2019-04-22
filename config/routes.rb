Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'podcasts#index'
  get '/podcasts', to: 'podcasts#index', as: 'podcasts'
  post '/podcasts', to: 'podcasts#create'
  get 'podcasts/new', to: 'podcasts#new', as: 'new_podcast'
  get '/podcasts/:id', to: 'podcasts#show', as: 'podcast'
  get '/podcasts/:id/edit', to: 'podcasts#edit', as: 'edit_podcast'
  put '/podcasts/:id', to: 'podcasts#update'
  post '/episodes', to: 'eposide#create'
  delete '/podcasts/:id', to: 'podcasts#destroy' 
end