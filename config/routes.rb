EmberGbs::Application.routes.draw do
  get "home/index"

  get "api/books/:title" => "api#by_title"
  root :to => "home#index"  
end
