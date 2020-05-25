Rails.application.routes.draw do
  resources :time_limits
  # Root
  root 'projects#index'

  # Devise
  devise_for :users, controllers: {
    registrations: 'users/registrations',
    sessions: 'users/sessions'
  }

  # Resources
  resources :users
  resources :judge_evaluations
  resources :project_event_details
  resources :social_impacts
  resources :collaborators
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

  #select_projects
  get "select_projects" => "projects#select_projects", :as => "select_projects"
  post 'select_projects' => 'projects#update_selected_projects', :as => "update_selected_projects"
end
