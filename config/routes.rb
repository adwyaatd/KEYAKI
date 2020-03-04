Rails.application.routes.draw do
  root "homes#index"

  resources :homes do
    collection do
      get "search"
    end
  end
  
  resources :posts,shallow: true do
    resources :replies do
      resources :likes
    end
  end
  resources :users 
  resources :categories
  

  get "login_form", to:"users#login_form"
  get "guest_login", to:"users#guest_login"
  post "login", to:"users#login"
  post "logout", to:"users#logout"

end