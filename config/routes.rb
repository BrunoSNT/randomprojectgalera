Rails.application.routes.draw do
  devise_for :users
  resources :themes
  resources :items
  resources :inventories
  resources :adventures
  resources :characters
  resources :factions
  resources :alignments
  resources :professions

  resources :characters do
    resources :inventories
  end

  namespace :characters do
    resources :inventory
  end

  get 'dashboard/index'
  get 'dashboard/character'
  get 'dashboard/map'
  get 'dashboard/inventory'
  get 'dashboard/ability'
  get 'dashboard/adventure'
  get 'dashboard/spellbook'
  get 'dashboard/masterscreen'
  get 'welcome/index'
  root 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
