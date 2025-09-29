Rails.application.routes.draw do


  devise_for :users
  root to: 'homes#top'

  resources :post_images, only: [:new, :index, :show, :create, :destroy]
  resources :users, only:[:show ,:edit]

  get 'homes/about', to: 'homes#about',as: "about"
end

