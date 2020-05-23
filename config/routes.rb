Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  scope module: :web do
    root 'home#index'

    resources :users do

    end

    resources :notes do

    end
  end
end
