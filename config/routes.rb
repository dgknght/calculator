Rails.application.routes.draw do
  resources :calculations, only: [:new] do
    collection do
      get :perform
    end
  end
  root to: 'calculations#new'
end
