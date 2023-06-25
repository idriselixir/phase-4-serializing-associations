Rails.application.routes.draw do
  resources :movies, only: [:index, :show] do
    get '/summary', on: :member, to: 'movies#summary'
  end

  resources :directors, only: [:index, :show]
  resources :reviews, only: [:index]
end
