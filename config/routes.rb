Rails.application.routes.draw do
  root controller: :index, action: :index
  get 'index/search' => 'index#search'
end
