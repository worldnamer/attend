Attend::Application.routes.draw do
  resources :contexts, except: :edit do
    resources :packing_lists, only: [:new, :create]
  end

  root :to => 'contexts#index'
end
