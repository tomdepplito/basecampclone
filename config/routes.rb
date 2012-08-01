Basecampclone::Application.routes.draw do
  resources :users do
    resources :projects
  end

  root :to => "sessions#new"
  
end
