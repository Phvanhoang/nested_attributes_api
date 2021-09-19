Rails.application.routes.draw do
  mount ActionCable.server => '/cable'
  get "/index", to: "notifications#index"
  get "/show", to: "notifications#show"
end
