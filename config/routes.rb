Rails.application.routes.draw do
  devise_for :users
  resources :users, :only => [:show]
  resources :events do
    post '/subscribe',   to: 'events#subscribe'
    post '/unsubscribe', to: 'events#unsubscribe'
  end
  resources :charges, :only => [:new, :create]
  root 'static_pages#home'
  get '/secret', to: 'static_pages#secret', as: :secret
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
