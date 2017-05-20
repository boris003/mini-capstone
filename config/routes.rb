Rails.application.routes.draw do
 
 get "/" => "cars#index"
 get "/cars" => "cars#index"
 
 get "/cars/new" => "cars#new"
 
 post "/cars" => "cars#create"

 get "/cars/:id" => "cars#show"

 get "/cars/:id/edit" => "cars#edit"

 patch "/cars/:id" => "cars#update"

 delete "/cars/:id" => "cars#destroy"

 get "/deals" => "cars#deals"

 post "/search" => "cars#search"

 get "/signup" => "users#new"
 post "/users" => "users#create"

 get "/login" => "sessions#new"
 post "/login" => "sessions#create"
 get "/logout" => "sessions#destroy"

 post "/buy_now" => "orders#create"


 get "categories/cars" => "categories#cars"
 get "categories/motorcycles" => "categories#motorcycles"
 get "categories/convertible" => "categories#convertible"
 get "categories/sport" => "categories#sport"


end
