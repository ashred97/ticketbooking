Rails.application.routes.draw do
  devise_for :users
 
  
 
  
  post "/generate_ticket" , to: "tickets#create"
  resources :tickets
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Defines the root path route ("/")
  # root "articles#index"

get "/" , to: "main#index"
get "sign_up" , to: "registration#new"
# get "/" , to: "main#user_login_form"
get "/user_login_form", to: "main#user_login_form"
get "/admin_login_form", to: "main#admin_login_form"
get "/user_home", to: "main#user_home"
get "/admin_home", to: "main#admin_home"
end