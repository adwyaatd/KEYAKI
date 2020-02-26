Rails.application.routes.draw do
  root "homes#top"

  resources :homes do
    member do
      get "top"
    end
  end
  
  resources :users 

  resources :posts

  get "replies/new"

end
