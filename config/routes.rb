Rails.application.routes.draw do
  get '/categorias' => 'category#index', as:'category'
  get '/categorias/nova' => 'category#new', as:'category_new'
  post '/categorias' => 'category#create', as:'category_create'
end
