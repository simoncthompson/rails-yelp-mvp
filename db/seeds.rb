Restaurant.destroy_all

10.times do
  restaurant = Restaurant.create(
    name: Faker::Restaurant.name,
    address: Faker::Address.full_address,
    category: %w[chinese italian japanese french belgian].sample
  )
  restaurant.save
  3.times do
    Review.create(
      content: Faker::Lorem.paragraph,
      rating: (0..5).to_a.sample,
      restaurant: restaurant
    )
  end
end
