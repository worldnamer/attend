Attend::Application.routes.draw do
  resources :contexts, except: :edit

  root :to => 'contexts#index'
end
