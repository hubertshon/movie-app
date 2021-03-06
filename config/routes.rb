Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  #get "/movies/:id" => "movies#show"

  namespace :api do
    get "/actors" => "actors#index"
    get "/actors/:id" => "actors#show"
    post "/actors" => "actors#create"
    patch "/actors/:id" => "actors#update"
    delete "/actors/:id" => "actors#destroy"



    get "/movies" => "movies#index"
    get "movies/:id" => "movies#show"
    post "/movies" => "movies#create"
    patch "/movies/:id" => "movies#update"
    delete "/movies/:id" => "movies#destroy"

    post "movies/search" => "movies#search"

    post "/users" => "users#create"

    post "/sessions" => "sessions#create"

    post "/moviegenres" => "movie_genres#create"

  end
end
