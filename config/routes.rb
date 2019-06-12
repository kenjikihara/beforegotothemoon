Rails.application.routes.draw do
  root 'pages#top'

  resources :events, only: [:index]
  resources :reviews, only: [:index, :show]

  namespace :admin do
    get '/' => 'dashboards#index'
    resources :events
    resources :reviews
  end
end
