Rails.application.routes.draw do
  resources :committee_evaluations
  resources :abstracts
  resources :project_details
  resources :projects
  resources :institutions
  resources :questions
  resources :editions
  resources :staff_members
  resources :committee_members
  resources :operatives
  resources :administrators
  resources :judges
  resources :professors
  resources :students

  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
