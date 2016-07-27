Rails.application.routes.draw do
  
  #home
  get "/" => "users#home", as: 'root_path' 

  #using devise for sign up and sign in
  devise_for :users

  #get to profile
  get "/users/profile" => "users#profile"

  #edit profile
  get "/users/profile/edit" => "users#edit"

  #post the edits made in form 
  patch "/users/profile" => "users#update"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
