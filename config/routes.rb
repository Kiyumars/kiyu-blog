Rails.application.routes.draw do

  root 'posts#home'
  get 'posts/home'

  resources :posts, only: [:index, :show]

  namespace :admin do
    resources :posts
  end
end
