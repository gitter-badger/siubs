Rails.application.routes.draw do
  devise_for :users, controllers: {
    registrations: "users/registrations",
    sessions: "users/sessions"
  }
  resources :parses, only: [:index, :new, :create] do
    collection {post :import}
  end
  resources :basic_units, only: [:index, :show, :update]
  resources :suggestions, only: [:index, :create, :new]


  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'home#index'

  # Setting up default pages
  get 'home/inactive' => 'home#inactive'

  # Static pages
  get 'suggestions/thank_you' => 'suggestions#thank_you'

end
