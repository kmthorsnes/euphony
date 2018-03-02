Rails.application.routes.draw do
  devise_for :users 
  root controller: :index, action: :index
  post :search, controller: :index, action: :search
end
