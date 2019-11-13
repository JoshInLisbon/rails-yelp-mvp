Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # Routing / Controllers
  # Asking yourself what routes you need is a very important step in your web-app building process. Routes should exactly mirror your product’s user stories. So let’s define our minimal product here:
  root to: 'restaurants#index'
  resources :restaurants, only: [:index, :new, :create, :show] do
    resources :reviews, only: [:index, :new, :create]
  end

  # A visitor can see the list of all restaurants.
  # GET "restaurants"
  # She/He can add a new restaurant, and be redirected to the show view of that new restaurant.
  # GET "restaurants/new"
  # POST "restaurants"
  # She/He can see the details of a restaurant, with all the reviews related to the restaurant.
  # GET "restaurants/38"
  # She/He can add a new review to a restaurant
  # GET "restaurants/38/reviews/new"
  # POST "restaurants/38/reviews"
  # And that’s it!

end
