Rails.application.routes.draw do
  root "sessions#new"
  resources :users, except: [:index]
  resources :sessions, only: [:new, :create, :destroy]
  get "/sessions" => "sessions#destroy"
  resources :results
  resources :quizzes, except: [:destroy] do
    resources :questions do
      resources :answers
    end
  end

end
