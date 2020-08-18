Rails.application.routes.draw do
  get 'comments/new'
  get 'comments/create'
  get 'comments/show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resource :session, only: [:new, :create, :destroy]
  resources :users, only: [:new, :create]
  resources :comments, only: [:create, :show]
  resources :subs, except: [:destroy]
  resources :posts, except: [:destroy, :index] do
    resources :comments, only: [:new]
  end

  root to: redirect('/subs')
end
