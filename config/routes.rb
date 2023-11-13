Rails.application.routes.draw do
  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Define the new route for the ask action in the QuestionsController
  get 'ask', to: 'questions#ask'

  # Defines the root path route ("/")
  # root "posts#index"
end

# config/routes.rb

Rails.application.routes.draw do
  get 'ask', to: 'questions#ask'
  get 'answer', to: 'questions#answer'
end

