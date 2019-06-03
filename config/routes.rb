Rails.application.routes.draw do
  root 'pages#top'

  resources :events, only: [:index, :show]
end
