Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :classrooms, only: [:show, :index]
  #resources :students, only: [:edit, :new, :show]
  resources :students
end
