Instapop::Application.routes.draw do
  resource :session, only: [:create, :new] do
    match '/:name/callback', action: :create, constraints: { name: 'instagram' }, as: :instagram_callback
  end

  resources :pictures, only: [:index]

  root to: 'pictures#index'
end
