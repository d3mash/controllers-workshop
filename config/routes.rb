Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  scope module: :web do
    root 'notes#index'

    resources :notes do
      scope module: :notes do
        resources :comments
      end
    end

    scope module: :my do
      resources :notes, only: :index
    end

    resources :users, only: :show
  end
end
