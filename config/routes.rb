Rails.application.routes.draw do
  root controller: :index, action: :index
  post :search, controller: :index, action: :search
end
