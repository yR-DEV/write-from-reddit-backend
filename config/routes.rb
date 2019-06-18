Rails.application.routes.draw do

  resources :posts
  namespace :api do 
    namespace :v1 do 
      resources :writing_responses
      resources :writing_prompts
    end
  end
end
