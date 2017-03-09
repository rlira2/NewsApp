Rails.application.routes.draw do
  resources :announcements
  get 'index' => 'announcements#index'
  root 'announcements#main_page'
end
