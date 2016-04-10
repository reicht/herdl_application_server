Rails.application.routes.draw do

  root  'dashboard#index'

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  namespace :api do
    resources :entries do
      resources :votes
    end
  end
end
