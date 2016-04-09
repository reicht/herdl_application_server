Rails.application.routes.draw do

  match 'api/entries', to: 'api/entries#create', via: [:options]
  match 'api/entries/:id/votes', to: 'api/votes#create', via: [:options]

  namespace :api do
    resources :entries do
      resources :votes
    end
  end
end
