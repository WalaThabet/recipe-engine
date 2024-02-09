# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
  resources :recipes, only: %i[index show]

  root 'recipes#index'
end
