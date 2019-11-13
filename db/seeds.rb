# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "destroying all"
Restaurant.destroy_all

puts "creating 5 restaurants with 5 reviews each"
10.times do
  rest = Restaurant.create(
    name: Faker::Restaurant.name,
    address: Faker::Address.full_address,
    phone_number: Faker::PhoneNumber.phone_number_with_country_code,
    category: ["chinese", "italian", "japanese", "french", "belgian"].sample,
  )
  puts "creating reviews"
  10.times do
    rest.reviews.create(
      content: Faker::Restaurant.review,
      rating: rand(0..5)
      )
  end
end



# ActiveRecord::Schema.define(version: 2019_11_13_134102) do

#   create_table "restaurants", force: :cascade do |t|
#     t.string "name"
#     t.string "address"
#     t.string "phone_number"
#     t.string "category"
#     t.datetime "created_at", null: false
#     t.datetime "updated_at", null: false
#   end

#   create_table "reviews", force: :cascade do |t|
#     t.string "content"
#     t.integer "rating"
#     t.integer "restaurant_id"
#     t.datetime "created_at", null: false
#     t.datetime "updated_at", null: false
#     t.index ["restaurant_id"], name: "index_reviews_on_restaurant_id"
#   end

# end
