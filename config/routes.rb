Rails.application.routes.draw do
  root to: 'cocktails#index'
  resources :cocktails, only: [:new, :show, :index, :create] do
    resources :doses, only: [:new, :create]
  end
  resources :doses, only: [:destroy]
end
