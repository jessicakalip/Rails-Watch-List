Rails.application.routes.draw do
  get 'bookmarks/new'
  root 'lists#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # LISTS
  resources :lists do
    resources :bookmarks, only: %i[new create]
  end

  resources :bookmarks, only: :destroy
end
