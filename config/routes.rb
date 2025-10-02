Rails.application.routes.draw do


  devise_for :users
  root to: 'homes#top'

  resources :post_images, only: [:new, :index, :show, :create, :destroy] do
    resources :post_comments, only:[:create,:destroy]
    resource :favorites, only:[:create,:destroy]
  end
  
  resources :users, only:[:show ,:edit,:update]
  get 'homes/about', to: 'homes#about',as: "about"
end

