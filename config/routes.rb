Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'tweets/introduction' => 'tweets#introduction'
  get 'tweets/drink' => 'tweets#drink'
  get 'tweets/food' => 'tweets#food'
  get 'tweets/procedure' => 'tweets#procedure'
  get 'hello/index' => 'hello#index'
  get 'hello/link' => 'hello#link'
  resources :tweets ,only: [:index, :create, :show, :edit, :update, :destroy]
  namespace :admin do
    resources :tweets, only: [:new]
  end
  root 'tweets#index'
end
