Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resource :session, only: [:new, :create]
  resources :users, only: [:new, :create]
  resources :subs, except: [:destroy]
  resources :posts, except: [:destroy, :index]
end
