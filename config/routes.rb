Rails.application.routes.draw do
  root 'static_page#index'

  namespace :api, defaults: {format: :json} do
    resources :moves
  end
end
