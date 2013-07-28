GuhhjjBlog::Application.routes.draw do
  resources :categories


  resources :blogs do
  	resources :comments
   end
   controller :sessions do
     get 'login' => :new
     post 'login' => :create
     delete 'logout' => :destroy
    end
   root :to => 'main#index', as: 'home'
   match "/admin", to: "main#admin"
end
