Rails.application.routes.draw do
  root  'marking_pages#new'

  resources :marking_pages, only: [:new, :create, :show]
end
