Rails.application.routes.draw do
  root  'marking_pages#index'
 
  resources :marking_pages, only: [:new, :create, :show, :index]
  resources :marking_pages do
    get :print, to: "marking_pages#show"
    post :print
    get :edit_as_new, to: "marking_pages#show"
    post :edit_as_new
  end
end
