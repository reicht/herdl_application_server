Rails.application.routes.draw do

  # match 'api/entries', to: 'api/entries', via: [:options]
  # match 'api/entries/:id/votes', to: 'api/votes', via: [:options]

  namespace :api do
    resources :entries do
      resources :votes
    end
  end
end
