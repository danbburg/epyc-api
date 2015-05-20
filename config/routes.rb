Rails.application.routes.draw do
  resources :nodes, except: [:new, :edit]
  resources :users, except: [:new, :edit]
  
  # Api definition
  namespace :api, defaults: { format: :json } do
    scope module: :v1,
              constraints: ApiConstraints.new(version: 1, default: true) do
        # We are going to list our resources here
    end
  end
end
