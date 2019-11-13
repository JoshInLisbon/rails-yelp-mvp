A restaurant has a
name, an
address, a
phone number, a
category (chinese, italian…) and many
reviews

# :primary_key, :string, :text, :integer, :float, :decimal, :datetime, :timestamp,
# :time, :date, :binary, :boolean, :references

rails g model restaurant name address phone_number category
rails g model review content rating:integer restaurant:references


A review has content (the
  text), a
rating (between 0 and 5) and
references a restaurant

A restaurant must have at least a name, an address and a category.
The restaurant category should belong to a fixed list ["chinese", "italian", "japanese", "french", "belgian"].
A review must have a parent restaurant.
A review must have content and a rating. The rating should be a number between 0 and 5.
When a restaurant is destroyed, all of its reviews should be destroyed as well.

# VIEWS
restaurants/index.html.erb
restaurants/new.html.erb
restaurants/show.html.erb


reviews/


A visitor can see the list of all restaurants.
GET "restaurants"
She/He can add a new restaurant, and be redirected to the show view of that new restaurant.
GET "restaurants/new"
POST "restaurants"
She/He can see the details of a restaurant, with all the reviews related to the restaurant.
GET "restaurants/38"
She/He can add a new review to a restaurant
