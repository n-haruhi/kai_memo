Rails.application.routes.draw do

  root to: 'homes#top'

  get 'homes/top'
  get 'homes/about' => 'homes#about', as: "about"

  devise_for :users

  resources :tasks, only: [:index, :new, :create, :show, :edit, :update, :destroy]
  resources :users, only: [:show, :edit, :update]
  resources :genres, only: [:index, :new, :create, :edit, :update, :destroy]

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
