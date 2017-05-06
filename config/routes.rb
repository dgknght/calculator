Rails.application.routes.draw do
  resources :calculations, only: [:new] do
    collection do
      get :perform
    end
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
