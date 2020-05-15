Rails.application.routes.draw do
  resources :cocktails, only: [:new, :show, :index, :create] do
    resources :doses, only: [:new, :create]
  end
  resources :doses, only: [:destroy]
end
