Rails.application.routes.draw do
  devise_for :users
 
  root  "pages#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :boards #, except: :show
  resources :articles
  get 'users/:user_id/boards/:id', to: 'boards#show'

  get "/:page" => "pages#show"

#  resources :users do
#    resources :boards, only: :show
#  end

end
