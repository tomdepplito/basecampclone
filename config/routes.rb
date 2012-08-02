Basecampclone::Application.routes.draw do
  devise_for :users
  resources :projects do
    resources :todos
  end
  resources :todos do
    resources :tasks
  end
  root :to => "projects#index"
  
end
