Rails.application.routes.draw do
  root "home#top"

  get "home/top"
  
  get "users/new"
  
  get "posts/new"

  get "replies/new"

end
