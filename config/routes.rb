Rails.application.routes.draw do
  get 'pages/index'
  devise_for :users
 
  root :to => "pages#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :boards #, except: :show
    
  get 'users/:user_id/boards/:id', to: 'boards#show'
  
#  resources :users do
#    resources :boards, only: :show
#  end

end
