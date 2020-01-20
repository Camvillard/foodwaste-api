puts 'cleaning database'

CartLeftover.destroy_all
Leftover.destroy_all
CategoryShop.destroy_all
Category.destroy_all
Shop.destroy_all
User.destroy_all

puts 'creating users'

User.create!(
  email: 'ca.villard@gmail.com',
  password: 'cccccc'
)

puts 'creating shops'

automne = Shop.create!(
  user: User.find_by(email: 'ca.villard@gmail.com'),
  name: 'Automne',
  address: '6500 Ave Christophe-Colomb',
  city: 'Montréal',
  country: 'Canada',
  zip_code: 'H2S 2G8'
)

puts 'creating categories for shops'

bakery = Category.create!(
  name: 'bakery'
)

burgers = Category.create!(
  name: 'burgers'
)

flowers = Category.create!(
  name: 'flower shop'
)

puts "assigning categories to shops"

CategoryShop.create!(
  shop: automne,
  category: bakery
)

puts "creating leftovers"

Leftover.create!(
  shop: automne,
  name: "pain aux olives",
  quantity: 4,
  description: 'pain aux olives',
  dlc: DateTime.now,
  price_cents: 2000,
  state: "fresh"
)







