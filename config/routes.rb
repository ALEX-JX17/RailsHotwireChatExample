Rails.application.routes.draw do
  root "messages#index"
  resources :messages do 
    member do 
      # It's necesary the acess to Edit by POST 'cause of turbo_stream doesn't proccess GET 
      post :edit
    end
  end
end
