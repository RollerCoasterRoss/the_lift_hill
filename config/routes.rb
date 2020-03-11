Rails.application.routes.draw do
  namespace :api do
    post "/sessions" => "sessions#create"

    post '/users' => 'users#create'
    get '/users/:id' => 'users#show'
    patch '/users/:id' => 'users#update'
    delete '/users/:id' => 'users#destroy'

    get '/attraction_reviews' => 'attraction_reviews#index'
    post '/attraction_reviews' => 'attraction_reviews#create'
    get '/attraction_reviews/:id' => 'attraction_reviews#show'
    patch '/attraction_reviews/:id' => 'attraction_reviews#update'
    delete '/attraction_reviews/:id' => 'attraction_reviews#destroy'

    get '/park_reviews' => 'park_reviews#index'
    post '/park_reviews' => 'park_reviews#create'
    get '/park_reviews/:id' => 'park_reviews#show'
    patch '/park_reviews/:id' => 'park_reviews#update'
    delete '/park_reviews/:id' => 'park_reviews#destroy'

    get '/attractions' => 'attractions#index'
    get '/attractions/:id' => 'attractions#show'

    get '/images' => 'images#index'
    post '/images' => 'images#create'
    get '/images/:id' => 'images#show'
    delete '/images/:id' => 'images#destroy'
  end
end
