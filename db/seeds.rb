# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
# db/seeds.rb
flats = [
  {
    name: 'Light & Spacious Garden Flat London',
    address: '10 Clifton Gardens London W9 1DT',
    description: 'A lovely summer feel for this spacious garden flat. Two double bedrooms, open plan living area and a beautiful conservatory.',
    price_per_night: 75,
    number_of_guests: 3,
    picture_url: 'https://images.unsplash.com/photo-1570129477492-45c003edd2be?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'
  },
  {
    name: 'Stylish House Close to River Thames',
    address: '5 Riverside London W9 1DT',
    description: 'A beautiful house with a river view. Three double bedrooms, large kitchen and a spacious living room.',
    price_per_night: 100,
    number_of_guests: 5,
    picture_url: 'https://images.unsplash.com/photo-1600585154340-be6161a56a0c?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'
  },
  {
    name: 'Cozy Cottage in Countryside',
    address: '20 Country Lane London W9 1DT',
    description: 'A charming cottage in the countryside. Perfect for a quiet getaway. Two double bedrooms and a large garden.',
    price_per_night: 60,
    number_of_guests: 4,
    picture_url: 'https://media.istockphoto.com/id/1251694108/fr/photo/concept-scandinave-de-lint%C3%A9rieur-du-salon-avec-canap%C3%A9-design-table-basse-plante-dans-le-pot.jpg?s=2048x2048&w=is&k=20&c=Uhv4UdPLOM4NwnJ4dWDWFWE4LRZe5oirgJ8c9754gPY='
  },
]

flats.each do |flat|
  Flat.find_or_create_by!(flat)
end
