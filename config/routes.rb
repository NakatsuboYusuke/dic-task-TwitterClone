Rails.application.routes.draw do
  resources :mutters do
    collection do
      get :list
    end
  end
end
