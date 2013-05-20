Attend::Application.routes.draw do
  resources :contexts, except: :edit do
    resources :packing_lists, only: [:new, :create, :show, :update] do
      resources :packables, only: [:new, :create, :update]
    end
  end

  root :to => 'contexts#index'
end
