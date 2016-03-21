Rails.application.routes.draw do
  resources :game do
    member do
      post 'shoot'
      post 'save'
    end
  end
end
