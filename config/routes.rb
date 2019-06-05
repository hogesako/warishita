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
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
