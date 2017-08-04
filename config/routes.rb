Rails.application.routes.draw do
  root "sessions#new"
  resources :users, except: [:index]
  resources :sessions, only: [:new, :create, :destroy]
  get "/sessions" => "sessions#destroy"
  resources :routes
  resources :quizzes do
    resources :questions do
      resources :answers
    end
  end

end
