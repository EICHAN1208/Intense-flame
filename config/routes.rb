Rails.application.routes.draw do
  devise_for :users
  root  'top#index'
  resources :pastquestions do
    resources :comments, only: [:create]
  end
  # get 'pastquestions' => 'pastquestions#index'
  # get   'pastquestions/new'  =>  'pastquestions#new'
  # post  'pastquestions'      =>  'pastquestions#create'
  # delete  'pastquestions/:id'  => 'pastquestions#destroy'
  # get   'pastquestions/:id/edit'  => 'pastquestions#edit'
  # patch   'pastquestions/:id'  => 'pastquestions#update'
  # get 'pastquestions/:id' => 'pastquestions#show'
  resources :users, only: [:show]
  # get   'users/:id'   =>  'users#show'
  resources :questions, only: [:index]
  
end
