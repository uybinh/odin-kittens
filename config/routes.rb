Rails.application.routes.draw do
  root "kittens#index"
  resources :kittens
  namespace 'api' do
    resources :kittens, only: [:index, :show]
  end
end
