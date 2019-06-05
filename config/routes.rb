Rails.application.routes.draw do
  get 'movies/show'
  get 'photos/show'
  get 'goods/show'
  get 'discography/show'
  get 'profiles/show'
  get 'pages/index'
  get 'contents/news'
  get 'contents/ticket'
  get 'contents/:id', to: 'contents#show'
  root 'top#show'
end
