Rails.application.routes.draw do
  root 'pages#top'

  resources :events, only: [:index]
  resources :reviews, only: [:index, :show]
end
