Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  resources :users, only: [] do
    collection do
      scope module: :users_context do
        resources :documents, only: [] do
          put :update, on: :collection
          get :show, on: :collection
        end
      end
    end
  end
end
