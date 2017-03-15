Rails.application.routes.draw do
  resources :announcements do
    resources :comments
  end
  root 'announcements#main_page'

  get 'index' => 'announcements#index'
  get 'main_page' => 'announcements#main_page'
  #get 'show' => 'announcements#show'
  get '/announcements/show/:id' => 'announcements#show', as: 'show'



end
