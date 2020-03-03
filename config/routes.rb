Rails.application.routes.draw do
  root "homes#index"

  resources :homes do
    member do
      get "top"
    end
  end
  
  resources :posts do
    resources :replies
  end
  resources :users 
  resources :categories
  resources :likes
  

  get "login_form", to:"users#login_form"
  get "guest_login", to:"users#guest_login"
  post "login", to:"users#login"
  post "logout", to:"users#logout"

end