Rails.application.routes.draw do
  resources :announcements

  root 'announcements#index'
end
