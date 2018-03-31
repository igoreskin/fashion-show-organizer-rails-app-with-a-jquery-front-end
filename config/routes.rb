Rails.application.routes.draw do

  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: "welcome#home"

  resources :designs, only: [:index, :show, :create]

  resources :designers, :fashion_shows

  resources :designers, only: [:index, :show] do
    resources :designs, only: [:index, :new, :show, :create]
    resources :fashion_shows, only: [:index, :new, :show, :create]
  end

  resources :fashion_shows, only: [:show] do
    resources :designs, only: [:index, :new, :show, :create]
    resources :designers, only: [:index, :show]
  end

  resources :designs, only: [:index, :show] do
    resources :comments
  end

end
