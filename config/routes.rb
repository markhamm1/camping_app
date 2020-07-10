Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do
    get "/supplies" => "supplies#index"
    get "/supplies/:id" => "supplies#show"
    post "/supplies" => "supplies#create"
    patch "/supplies/:id" => "supplies#update"
    delete "/supplies/:id" => "supplies#destroy"
  end
end
