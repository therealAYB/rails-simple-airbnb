# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

DESCRIPTIONS = ["Enjoy your stay in (CN) in this cozy, newly remodeled studio! This studio is centrally located in the (AN), a short drive from downtown and the beaches. Wifi and parking are included.", "(LN) is one of (AN)’s most historic and architecturally eclectic neighborhood. You’ll be close to everything in (CN) but far enough to enjoy a relaxing trip. We are both born and raised here so we know all the good spots like the delicious pancakes, vanilla infused orange juice and freshly brewed coffee, down the street at one of our favorite restaurants.", "Enjoy a comfy retreat in this 100 year old home in (AN). Cook in a retro kitchen and dine in surrounded by the original built-in corner shelfs. Take in all of (CN) as you’ll be only minutes away from everything!", "Enjoy your stay in (CN) in this cozy, newly remodeled studio! This studio is centrally located in the (AN), a short drive from downtown and the beaches. Wifi and parking are included.", "Brand new, very clean, studio apartment with a private bathroom, kitchenette and private work space. The studio is renovated with natural stone floors, high end finishings and closets, throughout the apartment.", "Wake up in this bright apartment located right in the heart of (CN). It’s a small renovated and well-equipped flat very close to the (AN) district. We are happy to share our well-proved insider tips with our guests to enjoy (CN) at its best!", "A lovely space to unwind and relax after a busy day whether it is work or play. Awake refreshed and ready for a day exploring the city via this clean, sunny apartment with impressive views. Head out and wander through the nearby farmers’ market and pick up local ingredients to later craft a meal in the fully stocked kitchen.", "This modern, sun-drenched apartment offers a tranquil residential vibe alongside quick, easy access to the downtown areas. Admire the crisp, contemporary decor of the open-plan living space and take in the peaceful surroundings from the cute terrace.", "This bright modern loft is perfect to relax in, just up the road from the heart of the city.", "This bright, stylish city centre apartment is the perfect base to explore our area. Located in a secure block between beautiful spot and iconic thing, this contemporary living space has everything to make you feel at home – WiFi, Netflix, washer and dryer, queen size bed, well equipped kitchen and tableware.", "Spacious loft that offers groups and families a fun and enjoyable space. Stay close to the bustling nightlife of downtown & discover a refreshing shower and comfy bed after an exciting night."]

puts 'Cleaning database...'
  Flat.destroy_all 

puts 'Creating flats'

apartment_name = ['flat', 'room', 'apartment', 'house']

(5..10).to_a.sample.times do

Flat.create!(
  name: "The #{Faker::Artist.name} #{apartment_name.sample}",
  address: Faker::Address.full_address,
  description: DESCRIPTIONS.sample(),
  price_per_night: (30..299).to_a.sample(),
  number_of_guests: (1..6).to_a.sample(),
  pic_url: "https://images.unsplash.com/photo-1484154218962-a197022b5858?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60"
)
end

puts 'Finished!'