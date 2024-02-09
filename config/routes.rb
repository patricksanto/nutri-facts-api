Rails.application.routes.draw do
  devise_for :users

  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :foods, only: [ :index, :show, :update, :create, :destroy]
      resources :food_groups, only: [ :index, :show]
    end
  end
end
