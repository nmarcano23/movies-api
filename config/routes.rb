# frozen_string_literal: true

Rails.application.routes.draw do
  namespace :v1, defaults: { format: :json } do
    resources :movies
    resources :people
    resources :person_movies
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
