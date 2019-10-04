Rails.application.routes.draw do

    namespace :api do
      namespace :v1 do
        resources :searches
      end
    end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # get '/api/v1/top_searches', :to => 'searches#top_search'
 get '/api/v1/top_searches', :to => 'api/v1/searches#top_search' #get route for top_searches - goes to the top_search action method
 post '/api/v1/searches', :to => 'api/v1/searches#create_search' #post route for top_searches - directed to the create_search action method

#set get and post route for searches and top_searches,

end
