Rails.application.routes.draw do

  authenticated :user, -> user {user.admin? } do
    mount Delayed::Web::Engine, at: '/jobs'
  end

  get 'auth/:provider/callback', to: 'connections#create'
  resources :connections, only: [:destroy]

  resources :posts do
    member do
      put :cancel
    end

  end

  devise_for :users, controllers: {registrations: 'registrations'}

  get 'about', to: 'pages#about'
  get 'auth/failure', to: 'connections#omniauth_failure'
  get 'pages/home'
  get 'dashboard', to: 'pages#dashboard'
  root 'pages#home'
end
