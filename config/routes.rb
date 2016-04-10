Rails.application.routes.draw do

  root  'dashboard#index'

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  namespace :api do
    delete "entries/:entry_id/votes" => 'votes#destroy'
    resources :entries do
      resources :votes
    end
  end
end
