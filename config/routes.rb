BlogEngine::Engine.routes.draw do
  resources :articles   #  It also causes the engine's routes to be isolated from those routes that are within the application.
  root to: "articles#index"
end
