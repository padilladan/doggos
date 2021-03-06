Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  # namespace :api do
  #   get "/photos" => "photos#index"
  # end
  namespace :api do
      get "/all" => "users#index"
      get "/user/:id" => "users#show"

      post "/users" => "users#create"
      delete "/user/:id" => "users#destroy"
  end
end
