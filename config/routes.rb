Scheduler::Application.routes.draw do
  devise_for :users

  resources :schedules do
    member do
      get 'date/:date', :action => :date
    end

    resources :appointments
  end

  resources :availabilities do
    resources :availability_exceptions
  end

  root :to => "schedules#index"
end
