Rails.application.routes.draw do
  get 'welcome', to: 'welcome#index'
  get 'welcome/show', to: 'welcome#show'
  post 'welcome', to: 'welcome#create'
  get 'checklists/:uri', to: 'checklists#show', as: 'checklist'
  get 'checklists', to: 'checklists#show'
  post 'checklist', to: 'checklists#update', as: 'checklist_update'
  mount LetterOpenerWeb::Engine, at: "/letter_opener" if Rails.env.development?
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root to: "welcome#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
