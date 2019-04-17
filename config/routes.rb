Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :students
      resources :semesters
    end
  end
  # resources :students
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
