# frozen_string_literal: true

Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :doses, only: :destroy
  resources :cocktails, only: %i[new show index create] do
    resources :doses, only: %i[new create]
  end
end
