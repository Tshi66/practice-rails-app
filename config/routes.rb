Rails.application.routes.draw do
  get '/'=>"home#top"
  get "about"=>"home#about"
  get "posts/index"=>"posts#index"
  get "posts/new"=>"posts#new"
  get "users/index"=>"users#index"
  get "users/signup"=>"users#new"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
