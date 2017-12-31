Rails.application.routes.draw do

  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: "welcome#home"

  resources :designs, only: [:index, :show]

  resources :designers, :fashion_shows

  resources :designers, only: [:show] do
    resources :designs, only: [:index, :new, :show, :create]
  end

  resources :fashion_shows, only: [:show] do
    resources :designs, only: [:index, :new, :show, :create]
  end

end
