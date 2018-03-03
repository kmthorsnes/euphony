Rails.application.routes.draw do
  devise_for :users, controllers: { omniauth_callbacks: :omniauth_callbacks}
  root controller: :index, action: :index
  post :search, controller: :index, action: :search
end
