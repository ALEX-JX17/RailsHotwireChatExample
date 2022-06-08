Rails.application.routes.draw do
  root "messages#index"
  resources :messages do 
    member do 
      # I need acces to Edit by Post 'cause of turbo_stream doens't proccess GET
      post :edit
    end
  end
end
