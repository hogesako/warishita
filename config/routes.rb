Rails.application.routes.draw do
  get 'signin', to: 'user_sessions#new'
  post 'users/signin', to: 'user_sessions#create'
  get 'signout', to: 'user_sessions#destroy'
  get 'signup', to: 'users#new'
  get 'dashboard', to: 'users#dashboard'
  resources :users

  get 'pages/update', to: 'pages#index',defaults: { page: '1' }
  get 'pages/update/page/:page', to: 'pages#index'
  get 'movies/:id', to: 'movies#show'
  get 'photos/:id', to: 'photos#show'

  get 'products', to: 'goods#show'
  get 'discography', to: 'discography#show'
  get 'profiles', to: 'profiles#show'


  get 'contents/news', defaults: { page: '1' }
  get 'contents/news/page/:page', to: 'contents#news'
  get 'contents/ticket', defaults: { page: '1' }
  get 'contents/ticket/page/:page', to: 'contents#ticket'
  get 'contents/:id', to: 'contents#show'
  root 'top#show'
  get '*path', controller: 'application', action: 'render_404'
end
