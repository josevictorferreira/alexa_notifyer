Rails.application.routes.draw do
  mount Rswag::Ui::Engine => '/api-docs'
  mount Rswag::Api::Engine => '/api-docs'
  mount Sidekiq::Web => '/sidekiq'

  namespace :api, constraints: { format: 'json' } do
    namespace :v1 do
      resources :events, only: [:create]
    end
  end
end
