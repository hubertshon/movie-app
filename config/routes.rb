Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  namespace :api do
    get "/actor_one" => "actors#look_up"
    get "/actor_list" => "actors#list_all"
    get "/movie_list" => "movies#get_info"
    get "movie_single" => "movies#get_one"
  end
end
