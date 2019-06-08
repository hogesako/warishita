Rails.application.routes.draw do
  resources :users
  get 'movies/show'
  get 'photos/show'
  get 'products', to: 'goods#show'
  get 'discography', to: 'discography#show'
  get 'profiles', to: 'profiles#show'
  get 'pages/update', to: 'pages#index'
  get 'contents/news', defaults: { page: '1' }
  get 'contents/news/page/:page', to: 'contents#news'
  get 'contents/ticket', defaults: { page: '1' }
  get 'contents/ticket/page/:page', to: 'contents#ticket'
  get 'contents/:id', to: 'contents#show'
  root 'top#show'
  get '*path', controller: 'application', action: 'render_404'
end
