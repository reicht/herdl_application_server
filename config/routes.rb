Rails.application.routes.draw do

  namespace :api do
    resources :entries do
      resources :votes
    end
  end
end
