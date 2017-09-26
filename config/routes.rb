Rails.application.routes.draw do

  resources :inventories
  resources :locations
  # ocorrencias
  get '/ocorrencias', to: 'ocorrencias#index'
  post '/ocorrencias', to: 'ocorrencias#create'
  put '/ocorrencias/:id', to: 'ocorrencias#update'
  delete '/ocorrencias/:id', to: 'ocorrencias#destroy'
  get '/ocorrencias/:id', to: 'ocorrencias#show'
  # 
  post 'auth/user_token' => 'user_token#create'
  delete 'auth/user_token' => 'user_token#destroy'

  
  resources :users

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
