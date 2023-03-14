Rails.application.routes.draw do
  post '/signup', to: "user#create"
  get '/me', to: "user#show"
  # post '/login', to: "user#show"
  post '/login', to: "session#create"
  delete '/logout', to: "session#destroy"
  get '/recipes', to: "recipe#index"
  post '/recipes', to: "recipe#create"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
