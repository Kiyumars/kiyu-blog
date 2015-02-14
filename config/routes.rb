Rails.application.routes.draw do

root 'posts#home'
get 'posts/home'

resources :posts
end
