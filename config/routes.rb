Rails.application.routes.draw do
  root "homes#index"

  resources :homes do
    member do
      get "top"
    end
  end
  
  resources :users 
  resources :posts do
    resources :replies
  end

  get "login_form", to:"users#login_form"
  post "login", to:"users#login"
  post "logout", to:"users#logout"

end