Rails.application.routes.draw do
  devise_for :users
  mount ActionCable.server => '/cable'

  root to: 'pages#home'

  resources :chats, only: [:show, :index, :create] do
   resources :messages, only: [:index, :create]
  end
end
