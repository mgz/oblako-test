Rails.application.routes.draw do
  root 'messages#index'
  resources :messages
  
  namespace :sys do
    post 'set_admin_email'
  end
end
