Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # get "/employees", to: 'employees#index'
  # get "/employees/:id", to: 'employees#show'
  # post "/employees", to: 'employees#create'
  # patch "/employees/:id", to: 'employees#update'
  # delete "/employees/:id", to: 'employees#destroy'
  # resources :employees, except: [:new, :edit]
  # resources :employees, only: [:index, :show, :create, :update, :destroy]
  namespace :api do
    namespace :v1 do
      resources :employees, except: [:new, :edit]
    end

    namespace :v2 do
      resources :employees, except: [:new, :edit]
    end
  end
end
