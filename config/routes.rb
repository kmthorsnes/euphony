Rails.application.routes.draw do
  root controller: :index, action: :index
  get :search, controller: :index, action: :search
end
