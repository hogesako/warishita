Rails.application.routes.draw do
  get 'movies/show'
  get 'photos/show'
  get 'products', to: 'goods#show'
  get 'discography', to: 'discography#show'
  get 'profiles', to: 'profiles#show'
  get 'pages/update', to: 'pages#index'
  get 'contents/news'
  get 'contents/ticket'
  get 'contents/:id', to: 'contents#show'
  root 'top#show'
end
