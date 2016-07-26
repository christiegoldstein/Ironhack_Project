Rails.application.routes.draw do
  
  get "/" => "users#home", as: 'root_path' 
  get "/users/:id/profile" => "users#profile"
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
