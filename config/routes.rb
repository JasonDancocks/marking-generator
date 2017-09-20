Rails.application.routes.draw do
  root  'marking_pages#new'
 
  resources :marking_pages, only: [:new, :create, :show, :index]
  resources :marking_pages do
    get :print, to: "marking_pages#show"
    post :print
  end
end
