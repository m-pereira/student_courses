Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'students#home'

  resources :students do
  	resources :student_courses, only: [:new, :create, :destroy]
  end
  resources :courses do
    resources :grades, except: [:edit, :update, :index]
  end
end
