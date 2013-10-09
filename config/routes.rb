GuhhjjBlog::Application.routes.draw do
  root :to => 'main#index', as: 'home'


  resources :categories

  resources :comments
  resources :blogs

  namespace :admin do
    resources :blogs
  end
  
   controller :sessions do
     get 'login' => :new
     post 'login' => :create
     delete 'logout' => :destroy
    end
  
   #match "/admin", to: "main#admin"

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
end
