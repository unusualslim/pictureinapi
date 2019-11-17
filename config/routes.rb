Rails.application.routes.draw do
  get 'pages/index'
  devise_for :users
  get 'vboards/index'
  root :to => "pages#index"
  get 'board/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :boards
  resources :vboards

end
