Rails.application.routes.draw do
  root 'sessions#new'
get '/login' => 'sessions#new'
get '/auth/facebook/callback' => 'sessions#create'
end
