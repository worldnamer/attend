Attend::Application.routes.draw do
  resources :contexts, except: :edit do
    resources :packing_lists, only: [:new, :create, :show, :update]
  end

  root :to => 'contexts#index'
end
