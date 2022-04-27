Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      get 'message', to: 'static#index'
    end
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  
  get '*page', to: 'static#index', constraints: ->(req) do
    !req.xhr? && req.format.html?
  end
  # Defines the root path route ("/")
  root "static#index"
end
